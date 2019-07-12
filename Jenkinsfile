pipeline {
  agent any
  stages {
    stage('Create package folder') {
      steps {
        sh 'pwsh ./init.ps1'
      }
    }
    stage('Get vRA-Content') {
      parallel {
        stage('Get vRA-Content') {
          steps {
            sh '''#!/usr/bin/pwsh
contents.ps1'''
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