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

Get-vRABlueprint | Select-Object -Property * -ExcludeProperty Id | ConvertTo-Json | Out-File "configurations/blueprints.json"