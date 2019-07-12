pipeline ***REMOVED***
  agent any
  stages ***REMOVED***
    stage('Get conf') ***REMOVED***
      steps ***REMOVED***
        sh '''git clone https://github.com/doudidas/configurations.git
cd configurations
git checkout dev'''
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
    stage('Move configuration files') ***REMOVED***
      steps ***REMOVED***
        sh 'mv package/* configurations'
      ***REMOVED***
    ***REMOVED***
    stage('Git Diff') ***REMOVED***
      steps ***REMOVED***
        sh 'git diff '
      ***REMOVED***
    ***REMOVED***
  ***REMOVED***
***REMOVED***