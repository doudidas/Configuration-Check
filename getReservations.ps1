<<<<<<< HEAD
$s = GET-Content ./session.json | ConvertFrom-Json
 $sourceVra = $s.url
 $tenant = $s.tenant
 $username = $s.username
 $password = $s.password

# Init credantials
$secpasswd = ConvertTo-SecureString $password -AsPlainText -Force
$cred = New-Object System.Management.Automation.PSCredential ($username, $secpasswd)


#connect to the source vRA instance
Connect-vRAServer -Server $sourceVra -Tenant $tenant -Credential $cred  -IgnoreCertRequirements

Get-vRAReservation| Select-Object -Property * -ExcludeProperty Id | ConvertTo-Json | Out-File package/reservations.json
=======
# Parameters
param(
    [string]$target
)

$filePath = "sessions/" + $target + ".json"

# Get session information from json file
$s = GET-Content $filePath | ConvertFrom-Json

# Init credantials Obj
$secpasswd = ConvertTo-SecureString $s.password -AsPlainText -Force
$cred = New-Object System.Management.Automation.PSCredential ($s.username, $secpasswd)


# Connect to the source vRA instance
Connect-vRAServer -Server $s.url -Tenant $s.tenant -Credential $cred  -IgnoreCertRequirements

Get-vRAReservation| Select-Object -Property * -ExcludeProperty Id | ConvertTo-Json | Out-File configurations/reservations.json
>>>>>>> ad25df7526708199e7c783e943cdc7d981e4b737

