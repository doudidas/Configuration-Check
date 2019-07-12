pipeline {
  agent any
  stages {
    stage('check') {
      steps {
        sh 'pwsh Get-InstalledModule'
      }
    }
    stage('Run script') {
      steps {
        sh '''#!/usr/bin/pwsh
./script.ps1 cava-n-80-154.eng.vmware.com vsphere.local etopin@vsphere.local VMware1!'''
      }
    }
  }
}