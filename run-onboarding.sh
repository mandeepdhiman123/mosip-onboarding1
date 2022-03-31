#!/usr/bin/env bash

PROP_FILE=./onboarding.properties

function prop {
    grep "${1}" ${PROP_FILE}|cut -d'=' -f2
}

mkdir -p $(prop 'report_dir') $(prop 'tmp_dir')

env_url=$(prop 'env-url')
keycloak_url=$(prop 'keycloak-url')
keycloak_admin_username=$(prop 'keycloak-admin-username')
keycloak_admin_password=$(prop 'keycloak-admin-password')
partner_kc_username=$(prop 'partner-kc-username')
partner_kc_userpassword=$(prop 'partner-kc-userpassword')
partner_kc_user_firstname=$(prop 'partner-kc-user-firstname')
partner_kc_user_lastname=$(prop 'partner-kc-user-lastname')
partner_kc_user_email=$(prop 'partner-kc-user-email')
partner_kc_user_role=$(prop 'partner-kc-user-role')
partner_manager_username=$(prop 'partner-manager-username')
partner_manager_password=$(prop 'partner-manager-password')
application_id=$(prop 'application-id')
policy_group_name=$(prop 'policy-group-name')
policy_name=$(prop 'policy-name')
policy_type=$(prop 'policy-type')
partner_type=$(prop 'partner-type')
partner_address=$(prop 'partner-address')
partner_contact=$(prop 'partner-contact')
partner_domain=$(prop 'partner-domain')
credential_type=$(prop 'credential-type')
cert_manager_username=$(prop 'cert-manager-username')
cert_manager_password=$(prop 'cert-manager-password')

echo -e "\e[31m\e[1m\e[5m**NOTE: \e[25m\e[21m This script is used to on baord different partners type available in MOSIP. You will be asked to provide few inputs initialy please accept accordingly.\e[0m  \n\n"
#
read -rsn1 -p $"Please make sure that you set the properties carefully. Press any key to continue or Ctrl+C to stop."$'\n'
#
echo "\nCopying properties to env variables"
jq '.values |= map(if .key=="url" then (.value="'$env_url'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="keycloak-url" then (.value="'$keycloak_url'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="keycloak-admin-username" then (.value="'$keycloak_admin_username'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="keycloak-admin-password" then (.value="'$keycloak_admin_password'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="partner-kc-username" then (.value="'$partner_kc_username'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="partner-kc-user-firstname" then (.value="'$partner_kc_user_firstname'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="partner-kc-user-lastname" then (.value="'$partner_kc_user_lastname'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="partner-kc-user-email" then (.value="'$partner_kc_user_email'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="partner-kc-userpassword" then (.value="'$partner_kc_userpassword'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="partner-kc-user-role" then (.value="'$partner_kc_user_role'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="partner-manager-username" then (.value="'$partner_manager_username'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="partner-manager-password" then (.value="'$partner_manager_password'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="application-id" then (.value="'$application_id'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="policy-group-name" then (.value="'$policy_group_name'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="policy-name" then (.value="'$policy_name'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="policy-type" then (.value="'$policy_type'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="partner-type" then (.value="'$partner_type'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="partner-address" then (.value="'$partner_address'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="partner-contact" then (.value="'$partner_contact'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="partner-domain" then (.value="'$partner_domain'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="credential-type" then (.value="'$credential_type'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="cert-manager-username" then (.value="'$cert_manager_username'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
jq '.values |= map(if .key=="cert-manager-password" then (.value="'$cert_manager_password'") else . end)' onboarding.postman_environment.json > $(prop 'tmp_dir')/tmp.json && mv $(prop 'tmp_dir')/tmp.json onboarding.postman_environment.json
echo "Completed copying properties\n"

read -rsn1 -p $"\nAre you agree to install newman and its libraries. Please read docks in case of any issue. Press any key to continue or Ctrl+C to stop."$'\n'
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
    RootCA=$(awk 'NF {sub(/\r/, ""); printf "%s\\r\\n",$0;}' ./certs/ca.pem)
    InterCA=$(awk 'NF {sub(/\r/, ""); printf "%s\\r\\n",$0;}' ./certs/inter.pem)
    PartnerCert=$(awk 'NF {sub(/\r/, ""); printf "%s\\r\\n",$0;}' ./certs/leaf.pem)

    newman run onboarding.postman_collection.json --delay-request 2000 -e onboarding.postman_environment.json --export-environment onboarding.postman_environment.json \
	--folder 'create_keycloak_user' \
	--folder 'create/publish_policy_group_and_policy' \
	--folder 'partner_self_registration' \
	--folder authenticate-to-upload-certs \
	--env-var ca-certificate="$RootCA" \
	--env-var intermediate-cert="$InterCA" \
	--env-var leaf-certificate="$PartnerCert" \
	--folder upload-ca-certificate \
	--folder upload-intermediate-ca-certificate \
	--folder upload-leaf-certificate \
	--folder 'partner_request_for_mapping_partner_to_policy' \
	--folder authenticate-as-partner-manager \
	--folder approve-partner-mapping-to-policy \
	--folder 'request_for_partner_api_key' \
	-d default-auth-policy.json -r htmlextra --reporter-htmlextra-export $(prop 'report_dir')/partner.html
;;
esac

