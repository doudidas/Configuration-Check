# Parameters
param(
    [string]$target
)

# Connect to the source vRA instance
Get-Content ./cache_session.json | ConvertFrom-Json | Set-Variable vRAConnection

# Get  object and remove some Properties
$object = Get-vRAPropertyDefinition | Sort-Object @{ e = 'Id'; a = $true } | Select-Object -Property * -ExcludeProperty DateCreated, LastUpdatedDate,version -ExpandProperty Options 

# Print value
Write-Output -InputObject $object

# Convert to JSON file
ConvertTo-Json -InputObject $object| Out-File "configurations/propertyDefinitions.json"