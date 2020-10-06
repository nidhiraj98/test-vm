resourceGroupName="TestVM"
location="centralus"
projectName="ECC"
username="nidhi"
key="../../../../.ssh/id_rsa.pub"
az group create --name $resourceGroupName --location "$location" &&
az deployment group create --resource-group $resourceGroupName --template-file template.json --parameters projectName=$projectName adminUsername=$username adminPublicKey="$(cat $key)" &&
az vm show --resource-group $resourceGroupName --name "$projectName-vm" --show-details --query publicIps --output tsv