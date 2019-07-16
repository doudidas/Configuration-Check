pipeline {
  agent any
  stages {
    stage('Get Dev Conf') {
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
        stage('Get Source Machines') {
          steps {
            sh 'pwsh getSourceMachines.ps1 source'
          }
        }
        stage('Get Services') {
          steps {
            sh 'pwsh getServiceStatuts.ps1 source'
          }
        }
        stage('Get PropertyDefinition') {
          steps {
            sh 'pwsh getPropertyDefinitions.ps1 source'
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
    stage('Diff With Dev') {
      steps {
        sh 'git diff > configurations/diff_dev.txt'
      }
    }
    stage('Get Prod Conf') {
      parallel {
        stage('Get vRA-Content') {
          steps {
            sh 'pwsh getContents.ps1 destination'
          }
        }
        stage('Get Business Groups') {
          steps {
            sh 'pwsh getBusinessGroups.ps1 destination'
          }
        }
        stage('Get Source Machines') {
          steps {
            sh 'pwsh getSourceMachines.ps1 destination'
          }
        }
        stage('Get Services') {
          steps {
            sh 'pwsh getServiceStatuts.ps1 source'
          }
        }
        stage('Get PropertyDefinition') {
          steps {
            sh 'pwsh getPropertyDefinitions.ps1 destination'
          }
        }
        stage('Get Blueprints') {
          steps {
            sh 'pwsh getBlueprints.ps1 destination'
          }
        }
        stage('Get Entitlements') {
          steps {
            sh 'pwsh getEntitlements.ps1 destination'
          }
        }
        stage('get Reservations') {
          steps {
            sh 'pwsh getReservations.ps1 destination'
          }
        }
      }
    }
    stage('Diff With Prod') {
      steps {
        sh 'git diff > configurations/diff_prod.txt'
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
