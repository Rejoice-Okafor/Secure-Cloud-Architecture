az keyvault create \
  --name myKeyVault123 \
  --resource-group MyResourceGroup \
  --location eastus \
  --sku standard

az keyvault set-policy \
  --name myKeyVault123 \
  --object-id <YOUR_OBJECT_ID> \
  --secret-permissions get list set delete \
  --key-permissions get list create delete

