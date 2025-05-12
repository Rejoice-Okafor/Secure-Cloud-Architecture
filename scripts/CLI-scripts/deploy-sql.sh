az sql server create \
  --name mySqlServer1234 \
  --resource-group MyResourceGroup \
  --location eastus \
  --admin-user sqladmin \
  --admin-password StrongP@ssw0rd!

az sql db create \
  --resource-group MyResourceGroup \
  --server mySqlServer1234 \
  --name myDatabase \
  --service-objective Basic

