pipeline {
  agent any
  stages {
    stage('Get Elements') {
      parallel {
        stage('Get Elements') {
          steps {
            sh '''#! /usr/bin/pwsh
script.ps1 cava-n-80-154.eng.vmware.com vsphere.local etopin@vsphere.local VMware1!'''
          }
        }
        stage('error') {
          steps {
            sh 'ps -p $$'
          }
        }
      }
    }
  }
}