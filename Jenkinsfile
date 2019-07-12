pipeline {
  agent any
  stages {
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
        sh 'git diff configurations > configurations/diff.txt'
      }
    }
    stage('Archive files') {
      steps {
        archiveArtifacts 'configurations/* '
      }
    }
  }
}