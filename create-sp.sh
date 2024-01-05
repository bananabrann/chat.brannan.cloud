# See https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/service_principal_client_secret
# for more information on creating a service principal for Terraform via Azure CLI.


az account set --subscription="${AZURE_SUBSCRIPTION_ID}"

az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/${AZURE_SUBSCRIPTION_ID}" --name="${ARM_CLIENT_ID
