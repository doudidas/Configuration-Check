pipeline {
  agent any
  stages {
    stage('Init Connexion') {
      steps {
        sh 'pwsh ./init.ps1 cava-n-80-154.eng.vmware.com vsphere.local etopin@vsphere.local VMware1!'
      }
    }
    stage('Get vRA-Content') {
      parallel {
        stage('Get vRA-Content') {
          steps {
            sh 'pwsh ./init.ps1 cava-n-80-154.eng.vmware.com vsphere.local etopin@vsphere.local VMware1!'
            sh '''#!/usr/bin/pwsh
Get-vRAContent | Select-Object -Property * -ExcludeProperty Id, DateCreated, CreatedDate, LastUpdated | ConvertTo-Json | Out-File package/contents.json
'''
          }
        }
        stage('Get BusinessGroups') {
          steps {
            sh '''#!/usr/bin/pwsh
./businessGroup.ps1'''
          }
        }
        stage('Get blueprints') {
          steps {
            sh '''#!/usr/bin/pwsh
./blueprint.ps1'''
          }
        }
        stage('Get Entitlements') {
          steps {
            sh '''#!/usr/bin/pwsh
entitlements.ps1'''
          }
        }
        stage('get Reservation') {
          steps {
            sh '''#!/usr/bin/pwsh
reservations.ps1'''
          }
        }
      }
    }
    stage('show files') {
      steps {
        sh '''#!usr/bin/pwsh
Get-ChildItem ./package | Get-Content -raw | ConvertFrom-Json'''
      }
    }
  }
}