pipeline {
  agent any

  stages {
    stage('Build') {
      steps {
        echo 'Ejecutando build...'
        sh 'npm install'
      }
    }

    stage('Test') {
      steps {
        echo 'Ejecutando tests...'
        sh 'npm test'
      }
    }
  }
}
