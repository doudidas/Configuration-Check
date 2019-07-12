pipeline {
  agent any
  stages {
    stage('Prepare') {
      steps {
        sh 'pwsh ./init.ps1'
      }
    }
    stage('Get vRA conf') {
      parallel {
        stage('Get vRA-Content') {
          steps {
            sh 'pwsh contents.ps1'
          }
        }
        stage('Get Business Groups') {
          steps {
            sh 'pwsh businessGroup.ps1'
          }
        }
        stage('Get Blueprints') {
          steps {
            sh 'pwsh blueprint.ps1'
          }
        }
        stage('Get Entitlements') {
          steps {
            sh 'pwsh entitlements.ps1'
          }
        }
        stage('get Reservations') {
          steps {
            sh 'pwsh reservations.ps1'
          }
        }
      }
    }
    stage('Archive files') {
      steps {
        archiveArtifacts 'package/*'
      }
    }
  }
}