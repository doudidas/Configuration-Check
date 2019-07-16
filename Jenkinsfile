pipeline {
  agent any
  stages {
    stage("Setup Dev Connection "){
        steps {
            sh 'pwsh ./connectToServer.ps1 env-dev'
        }
    }
    stage('Get Dev Conf') {
      parallel {
        stage('Get vRA-Content') {
          steps {
            sh 'pwsh getContents.ps1'
          }
        }
        stage('Get Business Groups') {
          steps {
            sh 'pwsh getBusinessGroups.ps1'
          }
        }
        stage('Get Source Machines') {
          steps {
            sh 'pwsh getSourceMachines.ps1'
          }
        }
        stage('Get Services') {
          steps {
            sh 'pwsh getServiceStatuts.ps1'
          }
        }
        stage('Get PropertyDefinition') {
          steps {
            sh 'pwsh getPropertyDefinitions.ps1'
          }
        }
        stage('Get Blueprints') {
          steps {
            sh 'pwsh getBlueprints.ps1'
          }
        }
        stage('Get Entitlements') {
          steps {
            sh 'pwsh getEntitlements.ps1'
          }
        }
        stage('get Reservations') {
          steps {
            sh 'pwsh getReservations.ps1'
          }
        }
      }
    }
    stage('Diff With Dev') {
      steps {
        sh 'git diff > configurations/diff_dev.txt'
        sh 'cat configurations/diff_dev.txt'
      }
    }
    stage("Setup Prod Connection "){
        steps {
            sh 'pwsh ./connectToServer.ps1 env-prod'
        }
    }
    stage('Get Prod Conf') {
      parallel {
        stage('Get vRA-Content') {
          steps {
            sh 'pwsh getContents.ps1'
          }
        }
        stage('Get Business Groups') {
          steps {
            sh 'pwsh getBusinessGroups.ps1'
          }
        }
        stage('Get Source Machines') {
          steps {
            sh 'pwsh getSourceMachines.ps1'
          }
        }
        stage('Get Services') {
          steps {
            sh 'pwsh getServiceStatuts.ps1'
          }
        }
        stage('Get PropertyDefinition') {
          steps {
            sh 'pwsh getPropertyDefinitions.ps1'
          }
        }
        stage('Get Blueprints') {
          steps {
            sh 'pwsh getBlueprints.ps1'
          }
        }
        stage('Get Entitlements') {
          steps {
            sh 'pwsh getEntitlements.ps1'
          }
        }
        stage('get Reservations') {
          steps {
            sh 'pwsh getReservations.ps1'
          }
        }
      }
    }
    stage('Diff With Prod') {
      steps {
        sh 'git diff > configurations/diff_prod.txt'
        sh 'cat configurations/diff_prod.txt'
      }
    }
    stage("Git cleanup"){
      steps{
          sh 'git checkout configurations/*.json'
      }
    }
    stage('Archive files') {
      steps {
        archiveArtifacts 'configurations/* '
      }
    }
  }
}
