pipeline ***REMOVED***
  agent any
  stages ***REMOVED***
    stage('Create package folder') ***REMOVED***
      steps ***REMOVED***
        sh 'pwsh ./init.ps1'
      ***REMOVED***
    ***REMOVED***
    stage('Get vRA-Content') ***REMOVED***
      parallel ***REMOVED***
        stage('Get vRA-Content') ***REMOVED***
          steps ***REMOVED***
            sh 'pwsh contents.ps1'
            archiveArtifacts 'package/content.json'
          ***REMOVED***
        ***REMOVED***
        stage('Get BusinessGroups') ***REMOVED***
          steps ***REMOVED***
            sh 'pwsh businessGroup.ps1'
          ***REMOVED***
        ***REMOVED***
        stage('Get blueprints') ***REMOVED***
          steps ***REMOVED***
            sh 'pwsh blueprint.ps1'
          ***REMOVED***
        ***REMOVED***
        stage('Get Entitlements') ***REMOVED***
          steps ***REMOVED***
            sh 'pwsh entitlements.ps1'
          ***REMOVED***
        ***REMOVED***
        stage('get Reservation') ***REMOVED***
          steps ***REMOVED***
            sh 'pwsh reservations.ps1'
          ***REMOVED***
        ***REMOVED***
      ***REMOVED***
    ***REMOVED***
    stage('show files') ***REMOVED***
      steps ***REMOVED***
        sh '''#!/usr/bin/bash
cat package/*'''
      ***REMOVED***
    ***REMOVED***
  ***REMOVED***
***REMOVED***