pipeline {
  agent any
  stages {
    stage('Init Connexion') {
      steps {
        sh '''#!usr/bin/pwsh
pwsh init.ps1'''
      }
    }
    stage('Get vRA-Content') {
      parallel {
        stage('Get vRA-Content') {
          steps {
            sh '''#!/usr/bin/pwsh
Get-vRAContent | Select-Object -Property * -ExcludeProperty Id, DateCreated, CreatedDate, LastUpdated | ConvertTo-Json | Out-File $path/contents.json
'''
          }
        }
        stage('Get BusinessGroups') {
          steps {
            sh '''#!/usr/bin/pwsh
Get-vRABusinessGroup | Select-Object -Property * -ExcludeProperty Id | ConvertTo-Json | Out-File $path/businessGroups.json
'''
          }
        }
        stage('Get blueprints') {
          steps {
            sh '''#!/usr/bin/pwsh
Get-vRABlueprint | Select-Object -Property * -ExcludeProperty Id | ConvertTo-Json | Out-File $path/blueprints.json'''
          }
        }
        stage('Get Entitlements') {
          steps {
            sh '''#!/usr/bin/pwsh
Get-vRAEntitlement | Select-Object -Property * -ExcludeProperty Id | ConvertTo-Json | Out-File $path/entitlements.json'''
          }
        }
        stage('get Reservation') {
          steps {
            sh '''#!/usr/bin/pwsh
Get-vRAReservation| Select-Object -Property * -ExcludeProperty Id | ConvertTo-Json | Out-File $path/reservations.json'''
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