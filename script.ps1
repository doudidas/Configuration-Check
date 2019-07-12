#create json files
Get-vRAContent | Select-Object -Property * -ExcludeProperty Id, DateCreated, CreatedDate, LastUpdated | ConvertTo-Json | Out-File $path/contents.json

Get-vRABusinessGroup | Select-Object -Property * -ExcludeProperty Id | ConvertTo-Json | Out-File $path/businessGroups.json
#!/usr/bin/pwsh
Get-vRABlueprint | Select-Object -Property * -ExcludeProperty Id | ConvertTo-Json | Out-File $path/blueprints.json
#!/usr/bin/pwsh
Get-vRAEntitlement | Select-Object -Property * -ExcludeProperty Id | ConvertTo-Json | Out-File $path/entitlements.json
#!/usr/bin/pwsh
Get-vRAReservation| Select-Object -Property * -ExcludeProperty Id | ConvertTo-Json | Out-File $path/reservations.json
