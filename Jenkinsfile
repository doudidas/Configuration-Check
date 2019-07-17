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
        environment = 'dev'
      }
      parallel {
        stage('vRA-Content') {
          steps {
            sh 'git diff configurations/contents.json > ./diff/dev/contents.txt'
            archiveArtifacts 'diff/dev/contents.txt'
          }
        }
        stage('Business Groups') {
          steps {
            sh 'git diff configurations/businessGroups.json > diff/dev/businessGroups.txt'
            archiveArtifacts 'diff/dev/businessGroups.txt'
          }
        }
        stage('Source Machines') {
          steps {
            sh 'git diff configurations/sourceMachines.json > diff/dev/sourceMachines.txt'
            archiveArtifacts 'diff/dev/sourceMachines.txt'
          }
        }
        stage('Services') {
          steps {
            sh 'git diff configurations/services.json > diff/dev/services.txt'
            archiveArtifacts 'diff/dev/services.txt'
          }
        }
        stage('PropertyDefinition') {
          steps {
            sh 'git diff configurations/propertyDefinitions.json > diff/dev/propertyDefinitions.txt'
            archiveArtifacts 'diff/dev/propertyDefinitions.txt'
          }
        }
        stage('Blueprints') {
          steps {
            sh 'git diff configurations/blueprints.json > diff/dev/blueprints.txt'
            archiveArtifacts 'diff/dev/blueprints.txt'
          }
        }
        stage('Entitlements') {
          steps {
            sh 'git diff configurations/entitlements.json > diff/dev/entitlements.txt'
            archiveArtifacts 'diff/dev/entitlements.txt'
          }
        }
        stage('Reservations') {
          steps {
            sh 'git diff configurations/reservations.json > diff/dev/reservations.txt'
            archiveArtifacts 'diff/dev/reservations.txt'
          }
        }
      }
    }
    stage('Prepare For Prod') {
      parallel {
        stage('Prepare workspace') {
          steps {
            sh 'mkdir -p diff/prod'
          }
        }
        stage('Connect to vRA') {
          steps {
            sh 'pwsh ./connectToServer.ps1 prod'
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
      parallel {
        stage('vRA-Content') {
          steps {
            sh 'git diff configurations/contents.json > diff/prod/contents.txt'
            archiveArtifacts 'diff/prod/contents.txt'
          }
        }
        stage('Business Groups') {
          steps {
            sh 'git diff configurations/businessGroups.json > diff/prod/businessGroups.txt'
            archiveArtifacts 'diff/prod/businessGroups.txt'
          }
        }
        stage('Source Machines') {
          steps {
            sh 'git diff configurations/sourceMachines.json > diff/prod/sourceMachines.txt'
            archiveArtifacts 'diff/prod/sourceMachines.txt'
          }
        }
        stage('Services') {
          steps {
            sh 'git diff configurations/services.json > diff/prod/services.txt'
            archiveArtifacts 'diff/prod/services.txt'
          }
        }
        stage('PropertyDefinition') {
          steps {
            sh 'git diff configurations/propertyDefinitions.json > diff/prod/propertyDefinitions.txt'
            archiveArtifacts 'diff/prod/propertyDefinitions.txt'
          }
        }
        stage('Blueprints') {
          steps {
            sh 'git diff configurations/blueprints.json > diff/prod/blueprints.txt'
            archiveArtifacts 'diff/prod/blueprints.txt'
          }
        }
        stage('Entitlements') {
          steps {
            sh 'git diff configurations/entitlements.json > diff/prod/entitlements.txt'
            archiveArtifacts 'diff/prod/entitlements.txt'
          }
        }
        stage('Reservations') {
          steps {
            sh 'git diff configurations/reservations.json > diff/prod/reservations.txt'
            archiveArtifacts 'diff/prod/reservations.txt'
          }
        }
      }
    }
  }
}