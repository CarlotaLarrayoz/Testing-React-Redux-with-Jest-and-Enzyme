pipeline {
    agent any

    // Solo se ejecuta en la rama feature/test-practica
    triggers {
        pollSCM('* * * * *') // solo como ejemplo si no hay webhooks
    }

    options {
        skipStagesAfterUnstable()
    }

    environment {
        NODE_ENV = 'development'
    }

    stages {
        stage('Preparación') {
            steps {
                echo 'Clonando y preparando entorno...'
            }
        }

        stage('Instalar dependencias') {
            steps {
                echo 'Ejecutando npm install...'
                sh 'npm install'
            }
        }

        stage('Build (opcional)') {
            steps {
                echo 'Build del proyecto...'
                // Si usas un comando como npm run build, lo agregas aquí
                sh 'echo "Build simulado: no se compila en esta práctica"'
            }
        }

        stage('Testing') {
            steps {
                echo 'Ejecutando pruebas con npm test...'
                sh 'npm test -- --watchAll=false'
            }
        }
    }

    post {
        success {
            echo '✅ Pipeline completado correctamente.'
        }
        failure {
            echo '❌ Error en el pipeline.'
        }
    }
}
