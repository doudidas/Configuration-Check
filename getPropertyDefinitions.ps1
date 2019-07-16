# Parameters
param(
    [string]$target
)

# Connect to the source vRA instance
# ./connectToServer.ps1 $target
Get-Content ./cache_session.json | ConvertFrom-Json | Set-Variable vRAConnection

# Parse values and save as JSON file
Get-vRAPropertyDefinition | Select-Object -Property * -ExcludeProperty DateCreated, LastUpdatedDate,version | ConvertTo-Json | Out-File "configurations/propertyDefinitions.json"