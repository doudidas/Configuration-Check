pipeline ***REMOVED***
  agent any
  stages ***REMOVED***
    stage('Get vRA conf') ***REMOVED***
      parallel ***REMOVED***
        stage('Get vRA-Content') ***REMOVED***
          steps ***REMOVED***
            sh 'pwsh getContents.ps1 source'
          ***REMOVED***
        ***REMOVED***
        stage('Get Business Groups') ***REMOVED***
          steps ***REMOVED***
            sh 'pwsh getBusinessGroups.ps1 source'
          ***REMOVED***
        ***REMOVED***
        stage('Get Blueprints') ***REMOVED***
          steps ***REMOVED***
            sh 'pwsh getBlueprints.ps1 source'
          ***REMOVED***
        ***REMOVED***
        stage('Get Entitlements') ***REMOVED***
          steps ***REMOVED***
            sh 'pwsh getEntitlements.ps1 source'
          ***REMOVED***
        ***REMOVED***
        stage('get Reservations') ***REMOVED***
          steps ***REMOVED***
            sh 'pwsh getReservations.ps1 source'
          ***REMOVED***
        ***REMOVED***
      ***REMOVED***
    ***REMOVED***
    stage('Git Diff') ***REMOVED***
      steps ***REMOVED***
        sh 'git diff origin/master configurations > configurations/diff.txt'
      ***REMOVED***
    ***REMOVED***
    stage('Archive files') ***REMOVED***
      steps ***REMOVED***
        archiveArtifacts 'configurations/* '
      ***REMOVED***
    ***REMOVED***
  ***REMOVED***
***REMOVED***