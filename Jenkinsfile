pipeline ***REMOVED***
  agent any
  stages ***REMOVED***
    stage('Prepare') ***REMOVED***
      steps ***REMOVED***
        sh 'pwsh ./init.ps1'
      ***REMOVED***
    ***REMOVED***
    stage('Get vRA conf') ***REMOVED***
      parallel ***REMOVED***
        stage('Get vRA-Content') ***REMOVED***
          steps ***REMOVED***
            sh 'pwsh contents.ps1'
          ***REMOVED***
        ***REMOVED***
        stage('Get Business Groups') ***REMOVED***
          steps ***REMOVED***
            sh 'pwsh businessGroup.ps1'
          ***REMOVED***
        ***REMOVED***
        stage('Get Blueprints') ***REMOVED***
          steps ***REMOVED***
            sh 'pwsh blueprint.ps1'
          ***REMOVED***
        ***REMOVED***
        stage('Get Entitlements') ***REMOVED***
          steps ***REMOVED***
            sh 'pwsh entitlements.ps1'
          ***REMOVED***
        ***REMOVED***
        stage('get Reservations') ***REMOVED***
          steps ***REMOVED***
            sh 'pwsh reservations.ps1'
          ***REMOVED***
        ***REMOVED***
      ***REMOVED***
    ***REMOVED***
    stage('Archive files') ***REMOVED***
      steps ***REMOVED***
        archiveArtifacts 'package/*'
      ***REMOVED***
    ***REMOVED***
  ***REMOVED***
***REMOVED***