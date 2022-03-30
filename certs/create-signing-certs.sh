# warning: do not use the certificates produced by this tool in production. This is for testing purposes only
# This is reference script.

PROP_FILE=../onboarding.properties

function prop {
    grep "${1}" ${PROP_FILE}|cut -d'=' -f2
}

partner_name=$(prop 'Partner-Name')
country=$(prop 'Country')
state=$(prop 'State')
locality=$(prop 'Locality')
orgnisation=$(prop 'Orgnisation')
org_unit=$(prop 'Org-Unit')
common_name=$(prop 'Common-Name')

# certificate authority
echo "==================== Creating CA certificate"
openssl genrsa -out $partner_name-RootCA.key 2048
openssl req -new -key $partner_name-RootCA.key -out $partner_name-RootCA.csr
openssl req -new -x509 -days 3650 -extensions v3_ca -subj "/C='$country'/ST='$state'/L='$locality'/O='$org'/OU='$org_unit'/CN='$common_name'" -key $partner_name-RootCA.key -out $partner_name-RootCA.crt

# Partner certificate
echo "==================== Creating partner certificate"
openssl genrsa -out $partner_name-Partner.key 2048
openssl req -new -key $partner_name-Partner.key -out $partner_name-Partner.csr
openssl x509 -req -extensions usr_cert -subj "/C='$country'/ST='$state'/L='$locality'/O='$org'/OU='$org_unit'/CN='$common_name'" -extfile ./openssl.cnf -days 3650 -in $partner_name-Partner.csr -CA $partner_name-RootCA.crt -CAkey $partner_name-RootCA.key -set_serial 04 -out $partner_name-Partner.crt
openssl verify -CAfile $partner_name-RootCA.crt $partner_name-Partner.crt
openssl pkcs12 -export -in $partner_name-Partner.crt -inkey $partner_name-Partner.key -out $partner_name-keystore.p12 -name $partner_name

