# Parameters
param(
    [string]$target
)

# Connect to the source vRA instance
./connectToServer.ps1 $target

# Parse values and save as JSON file
Get-vRAPropertyDefinition | Select-Object -Property * -ExcludeProperty DateCreated, LastUpdatedDate,version | ConvertTo-Json | Out-File "configurations/propertyDefinitions.json"