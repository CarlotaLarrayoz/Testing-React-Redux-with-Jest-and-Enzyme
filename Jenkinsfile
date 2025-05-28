pipeline {
    agent any

    stages {
        stage('Build') {
            when {
                expression {
                    return env.BRANCH_NAME ==~ /feature.*/  // coincide con 'feature' o 'feature/test-practica'
                }
            }
            steps {
                echo 'Compilando el proyecto...'
                // Ajusta según tu stack:
                sh 'npm install' 
                sh 'npm run build'
            }
        }

        stage('Test') {
            when {
                expression {
                    return env.BRANCH_NAME ==~ /feature.*/
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
