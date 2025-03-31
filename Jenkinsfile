pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Instalando dependencias...'
                sh 'npm install'
            }
        }

        stage('Testing') {
            steps {
                echo 'Ejecutando tests...'
                sh 'npm test -- --watchAll=false'
            }
        }
    }

    post {
        always {
            echo 'Proceso CI completado'
        }
    }
}
