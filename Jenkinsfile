pipeline {
  agent any
  stages {
    stage('Prepare For Dev') {
      environment {
        platform = "dev"
      }
      parallel {
        stage('Prepare workspace') {
          steps {
            sh 'mkdir -p diff/${platform}'
          }
        }
        stage('Connect to vRA') {
          steps {
            sh 'pwsh ./connectToServer.ps1 ${platform}'
          }
        }
      }
    }
    stage('Fetch Elements from Dev') {
      parallel {
        stage('Contents') {
          steps {
            sh 'pwsh getContents.ps1'
          }
        }
        stage('Business Groups') {
          steps {
            sh 'pwsh getBusinessGroups.ps1'
          }
        }
        stage('Source Machines') {
          steps {
            sh 'pwsh getSourceMachines.ps1'
          }
        }
        stage('Services') {
          steps {
            sh 'pwsh getServiceStatuts.ps1'
          }
        }
        stage('Property Definition') {
          steps {
            sh 'pwsh getPropertyDefinitions.ps1'
          }
        }
        stage('Blueprints') {
          steps {
            sh 'pwsh getBlueprints.ps1'
          }
        }
        stage('Entitlements') {
          steps {
            sh 'pwsh getEntitlements.ps1'
          }
        }
        stage('Reservations') {
          steps {
            sh 'pwsh getReservations.ps1'
          }
        }
      }
    }
    stage('Diff With Dev') {
      environment {
        platform = "dev"
      }
      parallel {
        stage('vRA-Content') {
          steps {
            sh 'git diff configurations/contents.json > ./diff/${platform}/contents.txt'
          }
        }
        stage('Business Groups') {
          steps {
            sh 'git diff configurations/businessGroups.json > diff/${platform}/businessGroups.txt'
          }
        }
        stage('Source Machines') {
          steps {
            sh 'git diff configurations/sourceMachines.json > diff/${platform}/sourceMachines.txt'
          }
        }
        stage('Services') {
          steps {
            sh 'git diff configurations/services.json > diff/${platform}/services.txt'
          }
        }
        stage('PropertyDefinition') {
          steps {
            sh 'git diff configurations/propertyDefinitions.json > diff/${platform}/propertyDefinitions.txt'
          }
        }
        stage('Blueprints') {
          steps {
            sh 'git diff configurations/blueprints.json > diff/${platform}/blueprints.txt'
          }
        }
        stage('Entitlements') {
          steps {
            sh 'git diff configurations/entitlements.json > diff/${platform}/entitlements.txt'
          }
        }
        stage('Reservations') {
          steps {
            sh 'git diff configurations/reservations.json > diff/${platform}/reservations.txt'
          }
        }
      }
    }
    stage('Prepare For Prod') {
      environment {
        platform = "prod"
      }
      parallel {
        stage('Prepare workspace') {
          steps {
            sh 'mkdir -p diff/${platform}'
          }
        }
        stage('Connect to vRA') {
          steps {
            sh 'pwsh ./connectToServer.ps1 ${platform}'
          }
        }
      }
    }
    stage('Fetch Elements from Prod') {
      parallel {
        stage('Contents') {
          steps {
            sh 'pwsh getContents.ps1'
          }
        }
        stage('Business Groups') {
          steps {
            sh 'pwsh getBusinessGroups.ps1'
          }
        }
        stage('Source Machines') {
          steps {
            sh 'pwsh getSourceMachines.ps1'
          }
        }
        stage('Services') {
          steps {
            sh 'pwsh getServiceStatuts.ps1'
          }
        }
        stage('Property Definition') {
          steps {
            sh 'pwsh getPropertyDefinitions.ps1'
          }
        }
        stage('Blueprints') {
          steps {
            sh 'pwsh getBlueprints.ps1'
          }
        }
        stage('Entitlements') {
          steps {
            sh 'pwsh getEntitlements.ps1'
          }
        }
        stage('Reservations') {
          steps {
            sh 'pwsh getReservations.ps1'
          }
        }
      }
    }
    stage('Diff With Prod') {
      environment {
        platform = "prod"
      }
      parallel {
        stage('vRA-Content') {
          steps {
            sh 'git diff configurations/contents.json > ./diff/${platform}/contents.txt'
          }
        }
        stage('Business Groups') {
          steps {
            sh 'git diff configurations/businessGroups.json > diff/${platform}/businessGroups.txt'
          }
        }
        stage('Source Machines') {
          steps {
            sh 'git diff configurations/sourceMachines.json > diff/${platform}/sourceMachines.txt'
          }
        }
        stage('Services') {
          steps {
            sh 'git diff configurations/services.json > diff/${platform}/services.txt'
          }
        }
        stage('PropertyDefinition') {
          steps {
            sh 'git diff configurations/propertyDefinitions.json > diff/${platform}/propertyDefinitions.txt'
          }
        }
        stage('Blueprints') {
          steps {
            sh 'git diff configurations/blueprints.json > diff/${platform}/blueprints.txt'
          }
        }
        stage('Entitlements') {
          steps {
            sh 'git diff configurations/entitlements.json > diff/${platform}/entitlements.txt'
          }
        }
        stage('Reservations') {
          steps {
            sh 'git diff configurations/reservations.json > diff/${platform}/reservations.txt'
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