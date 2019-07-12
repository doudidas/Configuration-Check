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