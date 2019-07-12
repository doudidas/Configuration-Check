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
            sh 'pwsh contents.ps1'
            archiveArtifacts 'package/content.json'
          }
        }
        stage('Get BusinessGroups') {
          steps {
            sh 'pwsh businessGroup.ps1'
          }
        }
        stage('Get blueprints') {
          steps {
            sh 'pwsh blueprint.ps1'
          }
        }
        stage('Get Entitlements') {
          steps {
            sh 'pwsh entitlements.ps1'
          }
        }
        stage('get Reservation') {
          steps {
            sh 'pwsh reservations.ps1'
          }
        }
      }
    }
    stage('show files') {
      steps {
        sh '''#!/usr/bin/bash
cat package/*'''
      }
    }
  }
}