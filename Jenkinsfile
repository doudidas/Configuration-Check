pipeline {
  agent none
  stages {
    stage('Setup Dev Connection ') {
      steps {
        sh 'pwsh ./connectToServer.ps1 dev'
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
      environment {
        environment = 'dev'
      }
      parallel {
        stage('vRA-Content') {
          steps {
            sh 'git diff configurations/contents.json > ./diff/dev/contents.txt'
          }
        }
        stage('Business Groups') {
          steps {
            sh 'git diff configurations/businessGroups.json > diff/dev/businessGroups.txt'
          }
        }
        stage('Source Machines') {
          steps {
            sh 'git diff configurations/sourceMachines.json > diff/dev/sourceMachines.txt'
          }
        }
        stage('Services') {
          steps {
            sh 'git diff configurations/services.json > diff/dev/services.txt'
          }
        }
        stage('PropertyDefinition') {
          steps {
            sh 'git diff configurations/propertyDefintions.json > diff/dev/propertyDefinitions.txt'
          }
        }
        stage('Blueprints') {
          steps {
            sh 'git diff configurations/blueprints.json > diff/dev/blueprints.txt'
          }
        }
        stage('Entitlements') {
          steps {
            sh 'git diff configurations/entitlements.json > diff/dev/entitlements.txt'
          }
        }
        stage('Reservations') {
          steps {
            sh 'git diff configurations/reservations.json > diff/dev/reservations.txt'
          }
        }
      }
    }
    stage('Setup Prod Connection ') {
      steps {
        sh 'pwsh ./connectToServer.ps1 prod'
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
      parallel {
        stage('vRA-Content') {
          steps {
            sh 'git diff configurations/contents.json > diff/prod/contents.txt'
          }
        }
        stage('Business Groups') {
          steps {
            sh 'git diff configurations/businessGroups.json > diff/prod/businessGroups.txt'
          }
        }
        stage('Source Machines') {
          steps {
            sh 'git diff configurations/sourceMachines.json > diff/prod/sourceMachines.txt'
          }
        }
        stage('Services') {
          steps {
            sh 'git diff configurations/services.json > diff/prod/services.txt'
          }
        }
        stage('PropertyDefinition') {
          steps {
            sh 'git diff configurations/propertyDefintions.json > diff/prod/propertyDefinitions.txt'
          }
        }
        stage('Blueprints') {
          steps {
            sh 'git diff configurations/blueprints.json > diff/prod/blueprints.txt'
          }
        }
        stage('Entitlements') {
          steps {
            sh 'git diff configurations/entitlements.json > diff/prod/entitlements.txt'
          }
        }
        stage('Reservations') {
          steps {
            sh 'git diff configurations/reservations.json > diff/prod/reservations.txt'
          }
        }
      }
    }
    stage('Archive files') {
      steps {
        archiveArtifacts 'diff/*'
      }
    }
  }
}