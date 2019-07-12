param(
[string]$sourceVra,$tenant, $username, $password
)

# Init credantials
$secpasswd = ConvertTo-SecureString $password -AsPlainText -Force
$cred = New-Object System.Management.Automation.PSCredential ($username, $secpasswd)

#connect to the source vRA instance
Connect-vRAServer -Server $sourceVra -Tenant $tenant -Credential $cred  -IgnoreCertRequirements

#create json files
Get-vRAContent | Select-Object -Property * -ExcludeProperty Id, DateCreated, CreatedDate, LastUpdated | ConvertTo-Json | Out-File ./package/contents.json

Get-vRABusinessGroup | Select-Object -Property * -ExcludeProperty Id | ConvertTo-Json | Out-File ./package/businessGroups.json

Get-vRABlueprint | Select-Object -Property * -ExcludeProperty Id | ConvertTo-Json | Out-File ./package/blueprints.json

Get-vRAEntitlement | Select-Object -Property * -ExcludeProperty Id | ConvertTo-Json | Out-File ./package/entitlements.json

Get-vRAReservation| Select-Object -Property * -ExcludeProperty Id | ConvertTo-Json | Out-File ./package/reservations.json
