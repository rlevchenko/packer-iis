#List publishers (Microsoft-only)
$region = "West Europe"
Get-AzVMImagePublisher -Location $region | Where-Object { $_.PublisherName -like "Microsoft*" } | Select-Object PublisherName

#List VM offers
$publisher = "MicrosoftWindowsServer"
Get-AzVMImageOffer -Location $region -PublisherName $publisher | Select-Object Offer

#List SKUs
$offer = "WindowsServer"
Get-AzVMImageSku -Location $region -PublisherName $publisher -Offer $offer | Select-Object Skus

#List VM Image versions
$sku = "2019-Datacenter"
Get-AzVMImage -Location $region -PublisherName $publisher -Offer $offer -Sku $sku | Select-Object Skus