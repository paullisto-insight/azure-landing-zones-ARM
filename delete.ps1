#Use a filter to select resource groups by substring
$filter = 'zoc'
 
#Find Resource Groups by Filter -> Verify Selection
#Get-AzResourceGroup | ? ResourceGroupName -match $filter | Select-Object ResourceGroupName

#Async Delete ResourceGroups by Filter. Uncomment the following line when you are sure. :-)
Get-AzResourceGroup | ? ResourceGroupName -match $filter | Remove-AzResourceGroup -AsJob -Force