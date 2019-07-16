# Parameters
param(
    [string]$target
)

# Connect to the source vRA instance
connectToServer.ps1 $target

# Parse values and save as JSON file
Get-vRABlueprint | Select-Object -Property * -ExcludeProperty Id, LastUpdated, CreatedDate, Version | ConvertTo-Json| Out-File "configurations/blueprints.json"