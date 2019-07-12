pipeline {
  agent any
  stages {
    stage('log') {
      steps {
        sh 'ls -R'
      }
    }
    stage('Get vRA conf') {
      parallel {
        stage('Get vRA-Content') {
          steps {
            sh 'pwsh getContents.ps1 source'
          }
        }
        stage('Get Business Groups') {
          steps {
            sh 'pwsh getBusinessGroups.ps1 source'
          }
        }
        stage('Get Blueprints') {
          steps {
            sh 'pwsh getBlueprints.ps1 source'
          }
        }
        stage('Get Entitlements') {
          steps {
            sh 'pwsh getEntitlements.ps1 source'
          }
        }
        stage('get Reservations') {
          steps {
            sh 'pwsh getReservations.ps1 source'
          }
        }
      }
    }
    stage('Git Diff') {
      steps {
        sh '''
cd configurations
git branch
git status
git diff master > diff'''
      }
    }
    stage('Archive files') {
      steps {
        archiveArtifacts 'configurations/* '
      }
    }
  }
}