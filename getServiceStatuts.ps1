# Parameters
param(
    [string]$target
)

# Connect to the source vRA instance
connectToServer.ps1 $target

# Parse values and save as JSON file
Get-vRAComponentRegistryServiceStatus | Select-Object -Property * -ExcludeProperty Id, LastUpdated, startedTime | ConvertTo-Json| Out-File "configurations/services.json"