# Parameters
param(
    [string]$target
)

# Connect to the source vRA instance
Get-Content ./cache_session.json | ConvertFrom-Json | Set-Variable vRAConnection

# Get  object and remove some Properties
$object = Get-vRAComponentRegistryServiceStatus | Sort-Object @{ e = 'Id'; a = $true } | Select-Object -Property * -ExcludeProperty Id, LastUpdated

foreach ($item in $object) {
    $item.ServiceStatus.PSObject.Properties.Remove('startedTime')
    $item.ServiceStatus.PSObject.Properties.Remove('serviceRegistrationId')
    Write-Output $item
}

# Print value
Write-Output -InputObject $object

# Convert to JSON file
$j = ConvertTo-Json -InputObject $object

Out-File "configurations/services.json" -InputObject $j