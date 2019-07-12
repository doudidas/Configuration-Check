pipeline ***REMOVED***
  agent any
  stages ***REMOVED***
    stage('Init Connexion') ***REMOVED***
      steps ***REMOVED***
        sh 'pwsh ./init.ps1 cava-n-80-154.eng.vmware.com vsphere.local etopin@vsphere.local VMware1!'
      ***REMOVED***
    ***REMOVED***
    stage('Get vRA-Content') ***REMOVED***
      parallel ***REMOVED***
        stage('Get vRA-Content') ***REMOVED***
          steps ***REMOVED***
            sh 'pwsh ./init.ps1 cava-n-80-154.eng.vmware.com vsphere.local etopin@vsphere.local VMware1!'
            sh '''#!/usr/bin/pwsh
Get-vRAContent | Select-Object -Property * -ExcludeProperty Id, DateCreated, CreatedDate, LastUpdated | ConvertTo-Json | Out-File package/contents.json
'''
          ***REMOVED***
        ***REMOVED***
        stage('Get BusinessGroups') ***REMOVED***
          steps ***REMOVED***
            sh '''#!/usr/bin/pwsh
./businessGroup.ps1'''
          ***REMOVED***
        ***REMOVED***
        stage('Get blueprints') ***REMOVED***
          steps ***REMOVED***
            sh '''#!/usr/bin/pwsh
./blueprint.ps1'''
          ***REMOVED***
        ***REMOVED***
        stage('Get Entitlements') ***REMOVED***
          steps ***REMOVED***
            sh '''#!/usr/bin/pwsh
entitlements.ps1'''
          ***REMOVED***
        ***REMOVED***
        stage('get Reservation') ***REMOVED***
          steps ***REMOVED***
            sh '''#!/usr/bin/pwsh
reservations.ps1'''
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