# Parameters
param(
    [string]$target
)

# Connect to the source vRA instance
./connectToServer.ps1 $target

# Parse values and save as JSON file
Get-vRABusinessGroup | Select-Object -Property * -ExcludeProperty Id | ConvertTo-Json | Out-File "configurations/businessGroups.json"