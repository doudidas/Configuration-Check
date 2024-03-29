# Parameters
param(
    [string]$target
)

# Connect to the source vRA instance
Get-Content ./cache_session.json | ConvertFrom-Json | Set-Variable vRAConnection

# Get  object and remove some Properties
$object = Get-vRAEntitlement | Sort-Object @{ e = 'Id'; a = $true } | Select-Object -Property * -ExcludeProperty Id,LastUpdatedDate, LastUpdatedBy, Version

foreach ($item in $object) {
    $item.Organization.PSObject.Properties.Remove('subtenantRef')
    Write-Output $item
}

# Print value
Write-Output -InputObject $object

# Convert to JSON file
ConvertTo-Json -InputObject $object | Out-File "configurations/entitlements.json"