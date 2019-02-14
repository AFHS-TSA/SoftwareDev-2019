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
  post { 
    success { 
       telegramSend 'The Latest Build of SoftwareDev-2019 succeeded http://jasonlong24.crabdance.com:8080/job/SoftwareDev-2019/' 
    } 
    failure { 
       telegramSend 'The Latest Build of SoftwareDev-2019 failed http://jasonlong24.crabdance.com:8080/job/SoftwareDev-2019/' 
    } 
    aborted { 
       telegramSend 'Someone aborted the recent SoftwareDev-2019 build http://jasonlong24.crabdance.com:8080/job/SoftwareDev-2019/' 
    } 
  }
}
