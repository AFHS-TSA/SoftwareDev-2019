pipeline {
  agent any

  stages {
    stage('dependencies') {
      steps {
        sh 'npm install'
      }
    }
    stage('prepare') {
      steps {
        sh 'cordova prepare'
      }
    }
    stage('build') {
      steps {
        sh 'echo a | sudo -S docker build -t software-dev .'
      }
    }
  }
}
