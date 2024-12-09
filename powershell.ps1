# Login to Azure
Connect-AzAccount

# Variables
$resourceGroupName = "example-resources"
$location = "West Europe"
$storageAccountName = "examplestorageacct"

# Create Resource Group
New-AzResourceGroup -Name $resourceGroupName -Location $location

# Create Storage Account
New-AzStorageAccount -ResourceGroupName $resourceGroupName `
                     -Name $storageAccountName `
                     -Location $location `
                     -SkuName "Standard_LRS" `
                     -Kind "StorageV2" `
                     -AccessTier "Hot"

# Output Storage Account details
$storageAccount = Get-AzStorageAccount -ResourceGroupName $resourceGroupName -Name $storageAccountName
$storageAccount