pipeline {
  agent any
  stages {
    stage('Get Elements') {
      steps {
        sh 'pwsh -NonInteractive -ExecutionPolicy ByPass script.ps1 cava-n-80-154.eng.vmware.com vsphere.local etopin@vsphere.local VMware1!'
      }
    }
  }
}