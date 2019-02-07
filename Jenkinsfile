pipeline {
  agent any

  stages {
    stage('dependencies') {
      steps {
        sh 'npm install'
        sh 'npm install -g cordova'
      }
    }
    stage('prepare') {
      steps {
        sh 'cordova prepare'
      }
    }
    stage('build') {
      steps {
        sh 'docker build -t software-dev .'
      }
    }
  }
}
