param(
[string]$sourceVra,$tenant, $username, $password
)
# Check if Module Exist
Import-Module -Name PowervRA


# setup package folder
$path = "./package"
If(!(test-path $path))
***REMOVED***
      New-Item -ItemType Directory -Force -Path $path
***REMOVED***

# Init credantials
$secpasswd = ConvertTo-SecureString $password -AsPlainText -Force
$cred = New-Object System.Management.Automation.PSCredential ($username, $secpasswd)

#connect to the source vRA instance
Connect-vRAServer -Server $sourceVra -Tenant $tenant -Credential $cred  -IgnoreCertRequirements

#create json files
Get-vRAContent | Select-Object -Property * -ExcludeProperty Id, DateCreated, CreatedDate, LastUpdated | ConvertTo-Json | Out-File $path/contents.json

Get-vRABusinessGroup | Select-Object -Property * -ExcludeProperty Id | ConvertTo-Json | Out-File $path/businessGroups.json

Get-vRABlueprint | Select-Object -Property * -ExcludeProperty Id | ConvertTo-Json | Out-File $path/blueprints.json

Get-vRAEntitlement | Select-Object -Property * -ExcludeProperty Id | ConvertTo-Json | Out-File $path/entitlements.json

Get-vRAReservation| Select-Object -Property * -ExcludeProperty Id | ConvertTo-Json | Out-File $path/reservations.json
