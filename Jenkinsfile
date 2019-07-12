pipeline ***REMOVED***
  agent any
  stages ***REMOVED***
    stage('Init Connexion') ***REMOVED***
      steps ***REMOVED***
        sh '''#!usr/bin/pwsh
init.ps1'''
      ***REMOVED***
    ***REMOVED***
    stage('Get vRA-Content') ***REMOVED***
      parallel ***REMOVED***
        stage('Get vRA-Content') ***REMOVED***
          steps ***REMOVED***
            sh '''#!/usr/bin/pwsh
Get-vRAContent | Select-Object -Property * -ExcludeProperty Id, DateCreated, CreatedDate, LastUpdated | ConvertTo-Json | Out-File $path/contents.json
'''
          ***REMOVED***
        ***REMOVED***
        stage('Get BusinessGroups') ***REMOVED***
          steps ***REMOVED***
            sh '''#!/usr/bin/pwsh
Get-vRABusinessGroup | Select-Object -Property * -ExcludeProperty Id | ConvertTo-Json | Out-File $path/businessGroups.json
'''
          ***REMOVED***
        ***REMOVED***
        stage('Get blueprints') ***REMOVED***
          steps ***REMOVED***
            sh '''#!/usr/bin/pwsh
Get-vRABlueprint | Select-Object -Property * -ExcludeProperty Id | ConvertTo-Json | Out-File $path/blueprints.json'''
          ***REMOVED***
        ***REMOVED***
        stage('Get Entitlements') ***REMOVED***
          steps ***REMOVED***
            sh '''#!/usr/bin/pwsh
Get-vRAEntitlement | Select-Object -Property * -ExcludeProperty Id | ConvertTo-Json | Out-File $path/entitlements.json'''
          ***REMOVED***
        ***REMOVED***
        stage('get Reservation') ***REMOVED***
          steps ***REMOVED***
            sh '''#!/usr/bin/pwsh
Get-vRAReservation| Select-Object -Property * -ExcludeProperty Id | ConvertTo-Json | Out-File $path/reservations.json'''
          ***REMOVED***
        ***REMOVED***
      ***REMOVED***
    ***REMOVED***
    stage('show files') ***REMOVED***
      steps ***REMOVED***
        sh '''#!usr/bin/pwsh
Get-ChildItem ./package | Get-Content -raw | ConvertFrom-Json'''
      ***REMOVED***
    ***REMOVED***
  ***REMOVED***
***REMOVED***