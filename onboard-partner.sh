#!/usr/bin/env bash

PROP_FILE=./onboarding.properties

function prop {
    grep "${1}" ${PROP_FILE}|cut -d'=' -f2
}

mkdir -p $(prop 'report_dir') $(prop 'tmp_dir')

env_url=$(prop 'env-url')
request_time=$(prop 'request-time')
keycloak_url=$(prop 'keycloak-url')
keycloak_admin_username=$(prop 'keycloak-admin-username')
keycloak_admin_password=$(prop 'keycloak-admin-password')
keycloak_token=$(prop 'keycloak-token')
partner_kc_username=$(prop 'partner-kc-username')
partner_kc_user_firstname=$(prop 'partner-kc-user-firstname')
partner_kc_user_lastname=$(prop 'partner-kc-user-lastname')
partner_kc_user_email=$(prop 'partner-kc-user-email')
partner_kc_userpassword=$(prop 'partner-kc-userpassword')
partner_kc_userid=$(prop 'partner-kc-userid')
partner_kc_user_role=$(prop 'partner-kc-user-role')
role_id=$(prop 'roleid')
admin_username=$(prop 'admin-username')
admin_password=$(prop 'admin-password')
application_id=$(prop 'application-id')
mosip_admin_client_secret=$(prop 'mosip-admin-client-secret')
partner_admin_token=$(prop 'partner-admin-token')
policy_group_name=$(prop 'policy-group-name')
policy_group_id=$(prop 'policy-group-id')
policy_name=$(prop 'policy-name')
policy_data=$(prop 'policy-data')
policy_type=$(prop 'policy-type')
policy_id=$(prop 'policy-id')
partner_type=$(prop 'partner-type')
partner_address=$(prop 'partner-address')
partner_contact=$(prop 'partner-contact')
mosip_partner_client_secret=$(prop 'mosip-partner-client-secret')
partner_domain=$(prop 'partner-domain')
credential_type=$(prop 'credential-type')
mosip_cert_admin_clientid=$(prop 'mosip-cert-admin-clientid')
mosip_cert_admin_client_secret=$(prop 'mosip-cert-admin-client-secret')
ca_certificate=$(prop 'ca-certificate')
leaf_certificate=$(prop 'leaf-certificate')
intermediate_cert=$(prop 'intermediate-cert')
signed_leaf_certificate=$(prop 'signed-leaf-certificate')
cert_application_id=$(prop 'cert-application-id')
cert_reference_id=$(prop 'cert-reference-id')


#jq '.values |= map(if .key=="url" then (.value="'$env_url'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="url" then (.value="'$env_url'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="requesttime" then (.value="'$request_time'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="keycloak-url" then (.value="'$keycloak_url'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="keycloak-admin-username" then (.value="'$keycloak_admin_username'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="keycloak-admin-password" then (.value="'$keycloak_admin_password'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="keycloak-token" then (.value="'$keycloak_token'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="partner-kc-username" then (.value="'$partner_kc_username'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="partner-kc-user-firstname" then (.value="'$partner_kc_user_firstname'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="partner-kc-user-lastname" then (.value="'$partner_kc_user_lastname'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="partner-kc-user-email" then (.value="'$partner_kc_user_email'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="partner-kc-userpassword" then (.value="'$partner_kc_userpassword'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="partner-kc-userid" then (.value="'$partner_kc_userid'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="partner-kc-user-role" then (.value="'$partner_kc_user_role'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="roleid" then (.value="'$role_id'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="admin-username" then (.value="'$admin_username'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="admin-password" then (.value="'$admin_password'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="application-id" then (.value="'$application_id'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="mosip-admin-client-secret" then (.value="'$mosip_admin_client_secret'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="partner-admin-token" then (.value="'$partner_admin_token'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="policy-group-name" then (.value="'$policy_group_name'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="policy-group-id" then (.value="'$policy_group_id'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="policy-name" then (.value="'$policy_name'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="policy-data" then (.value="'$policy_data'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="policy-type" then (.value="'$policy_type'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="policy-id" then (.value="'$policy_id'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="partner-type" then (.value="'$partner_type'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="partner-address" then (.value="'$partner_address'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="partner-contact" then (.value="'$partner_contact'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="mosip-partner-client-secret" then (.value="'$mosip_partner_client_secret'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="partner-domain" then (.value="'$partner_domain'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="credential-type" then (.value="'$credential_type'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="mosip-cert-admin-clientid" then (.value="'$mosip_cert_admin_clientid'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="mosip-cert-admin-client-secret" then (.value="'$mosip_cert_admin_client_secret'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="ca-certificate" then (.value="'$ca_certificate'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="leaf-certificate" then (.value="'$leaf_certificate'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="intermediate-cert" then (.value="'$intermediate_cert'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="signed-leaf-certificate" then (.value="'$signed_leaf_certificate'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="cert-application-id" then (.value="'$cert_application_id'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="cert-reference-id" then (.value="'$cert_reference_id'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json


echo -e "\e[31m\e[1m\e[5m**NOTE: \e[25m\e[21m This script is used to on baord different partners type available in MOSIP. You will be asked to provide few inputs initialy please accept accordingly.\e[0m  \n\n"

read -rsn1 -p $"Please make sure that you set the properties carefully. Press any key to continue or Ctrl+C to stop."$'\n'

read -rsn1 -p $"Are you agree to install newman and its libraries. Please read docks in case of any issue. Press any key to continue or Ctrl+C to stop."$'\n'

npm install -g newman -y
npm install -g newman-reporter-htmlextra -y

echo -e "\e[31m************Please select option based on your requirement.******************\e[0m \n \
Press 0 : If you want to onboard default certificates domain. \n \
Press 1 : If you want to onboard Auth_Partner domain.\n \
Press 2 : If you want to onboard Credential_Partner domain.  \n \
Press 3 : If you want to onboard Misp_Partner domain. \n \
Press 4 : If you want to onboard Device_Provider domain. \n \
Press 5 : If you want to onboard Online_Verification_Partner domain. \n \
Press 6 : If you want to onboard Manual_Adjudication domain. \n \
Press 7 : If you want to onboard FTM_Provider domain. \n \
Press 8 : If you want to onboard ABIS_Partner domain. \n \
Press 9 : If you want to onboard Print_Partner domain. \n \
Press 10 : if you want to upload all certs."

read -p 'Enter Choice: ' choice
if [[ -z "${choice}" ]]; then
    echo "\e[31m Input cannot be blank please try again.\e[0m  \n"
    exit 0
else
    if ! [[ "${choice}" =~ ^[+-]?[0-9]+\.?[0-9]*$ ]]; then
        echo "\e[31m Input must be a numbers.\e[0m  \n"
        exit 1
    fi
fi


case ${choice} in
   0)
#    bash ./cert/create-signing-certs.sh
    RootCA=$(awk 'NF {sub(/\r/, ""); printf "%s\\r\\n",$0;}' ./certs/rootcert.pem)
    PartnerCert=$(awk 'NF {sub(/\r/, ""); printf "%s\\r\\n",$0;}' ./certs/partnercert.pem)

    newman run partner_onboarding.postman_collection.json --delay-request 2000 -e onboarding.postman_environment.json --export-environment onboarding.postman_environment.json \
	--folder 'create_keycloak_user' \
	--folder 'create_partner_policy_and_policy_group' \
	--folder 'partner_self_registration' \
	--folder authenticating-as-partner-manager \
	--folder upload-ca-certificate \
	--folder upload-leaf-certificate \
	--folder authenticate-as-partner \
	--folder mapping-new-partner-to-policyname \
	--folder authenticating-as-partner-manager \
	--folder approve-partner-api-key-request \
	--folder authenticate-as-partner \
	--folder create-apikey-for-partner \
	--env-var ca-certificate="'$RootCA'" \
	--env-var leaf-certificate="'$PartnerCert'" \
	-d default-auth-policy.json -r htmlextra --reporter-htmlextra-export $(prop 'report_dir')/partner.html
;;

#      newman run partner_onboarding.postman_collection.json --delay-request 2000 -e onboarding.postman_environment.json --export-environment onboarding.postman_environment.json \
#      --folder authenticating-as-partner-manager \
#      --folder download-ida-certificate \
#	  --folder upload-ca-certificate \
#	  -d default-auth-policy.json -r htmlextra --reporter-htmlextra-export $(prop 'report_dir')/report.html
#
#	  jq '.values |= map(if .key=="cert-application-id" then (.value="'$cert_application_id'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
#	  jq '.values |= map(if .key=="cert-reference-id" then (.value="'$cert_reference_id'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
#	  jq '.values |= map(if .key=="partner-domain" then (.value="'$partner_domain'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
#	  jq '.values |= map(if .key=="partner-kc-username" then (.value="'$partner_kc_username'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
#
#     newman run partner_onboarding.postman_collection.json --delay-request 2000 -e onboarding.postman_environment.json --export-environment onboarding.postman_environment.json \
#      --folder authenticating-as-partner-manager \
#	  --folder download-ida-certificate \
#	  --folder upload-ca-certificate \
#	  -d default-auth-policy.json -r htmlextra --reporter-htmlextra-export $(prop 'report_dir')/choice($choice).html

#     newman run partner_onboarding.postman_collection.json --delay-request 2000 -e onboarding.postman_environment.json --export-environment onboarding.postman_environment.json \
#      --folder 'create_keycloak_user' \
#      --folder 'create_partner_policy_and_policy_group' \
#      -d default-auth-policy.json -r htmlextra --reporter-htmlextra-export $(prop 'report_dir')/create_keycloak_user.html
#   ;;
#   1)
#     newman run partner_onboarding.postman_collection.json --delay-request 2000 -e onboarding.postman_environment.json --folder 'create_keycloak_user' --folder 'authentication-as-partner-manager/global-admin' -r htmlextra --reporter-htmlextra-export $(prop 'report_dir')/create_keycloak_user.html
#   ;;
#   2)
#     newman run partner_onboarding.postman_collection.json --delay-request 2000 -e onboarding.postman_environment.json --folder 'create_keycloak_user' --folder 'authentication-as-partner-manager/global-admin' -r htmlextra --reporter-htmlextra-export $(prop 'report_dir')/create_keycloak_user.html
#   ;;
#   3)
#     newman run partner_onboarding.postman_collection.json --delay-request 2000 -e onboarding.postman_environment.json --folder 'create_keycloak_user' --folder 'authentication-as-partner-manager/global-admin' -r htmlextra --reporter-htmlextra-export $(prop 'report_dir')/create_keycloak_user.html
#   ;;
#   4)
#     newman run partner_onboarding.postman_collection.json --delay-request 2000 -e onboarding.postman_environment.json --folder 'create_keycloak_user' --folder 'authentication-as-partner-manager/global-admin' -r htmlextra --reporter-htmlextra-export $(prop 'report_dir')/create_keycloak_user.html
#   ;;
#   5)
#     newman run partner_onboarding.postman_collection.json --delay-request 2000 -e onboarding.postman_environment.json --folder 'create_keycloak_user' --folder 'authentication-as-partner-manager/global-admin' -r htmlextra --reporter-htmlextra-export $(prop 'report_dir')/create_keycloak_user.html
#   ;;
#   6)
#     newman run partner_onboarding.postman_collection.json --delay-request 2000 -e onboarding.postman_environment.json --folder 'create_keycloak_user' --folder 'authentication-as-partner-manager/global-admin' -r htmlextra --reporter-htmlextra-export $(prop 'report_dir')/create_keycloak_user.html
#   ;;
#   7)
#     newman run partner_onboarding.postman_collection.json --delay-request 2000 -e onboarding.postman_environment.json --folder 'create_keycloak_user' --folder 'authentication-as-partner-manager/global-admin' -r htmlextra --reporter-htmlextra-export $(prop 'report_dir')/create_keycloak_user.html
#   ;;
#   8)
#     newman run partner_onboarding.postman_collection.json --delay-request 2000 -e onboarding.postman_environment.json --folder 'create_keycloak_user' --folder 'authentication-as-partner-manager/global-admin' -r htmlextra --reporter-htmlextra-export $(prop 'report_dir')/create_keycloak_user.html
#   ;;
#   9)
#     newman run partner_onboarding.postman_collection.json --delay-request 2000 -e onboarding.postman_environment.json --folder 'create_keycloak_user' --folder 'authentication-as-partner-manager/global-admin' -r htmlextra --reporter-htmlextra-export $(prop 'report_dir')/create_keycloak_user.html
#   ;;
#   10)
#     newman run partner_onboarding.postman_collection.json --delay-request 2000 -e onboarding.postman_environment.json --folder 'create_keycloak_user' --folder 'authentication-as-partner-manager/global-admin' -r htmlextra --reporter-htmlextra-export $(prop 'report_dir')/create_keycloak_user.html
#   ;;
#   11)
#     newman run partner_onboarding.postman_collection.json --delay-request 2000 -e onboarding.postman_environment.json --folder 'create_keycloak_user' --folder 'authentication-as-partner-manager/global-admin' -r htmlextra --reporter-htmlextra-export $(prop 'report_dir')/create_keycloak_user.html
#   ;;
esac

