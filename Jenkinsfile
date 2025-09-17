pipeline {
    agent any

    stages {
        stage('Build') {
            when {
                expression {
                    return env.BRANCH_NAME.startsWith('feature/')
                }
            }
            steps {
                echo 'Compilando el proyecto...'
                sh 'npm install'
                sh 'npm run build'
            }
        }

        stage('Test') {
            when {
                expression {
                    return env.BRANCH_NAME.startsWith('feature/')
                }
            }
            steps {
                echo 'Ejecutando pruebas...'
                sh 'npm test'
            }
        }
    }

    post {
        success {
            echo 'Pipeline finalizado correctamente.'
        }
        failure {
            echo 'El pipeline ha fallado.'
        }
    }
}
