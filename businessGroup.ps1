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

Get-vRABusinessGroup | Select-Object -Property * -ExcludeProperty Id | ConvertTo-Json | Out-File package/businessGroups.json
