pipeline {
    agent any

    stages {
        stage('Build') {
            when {
                branch 'feature'
            }
            steps {
                echo 'Compilando el proyecto...'
                sh './gradlew build' // Cambia esto si usas npm, Maven, etc.
            }
        }

        stage('Test') {
            when {
                branch 'feature'
            }
            steps {
                echo 'Ejecutando pruebas...'
                sh './gradlew test' // Cambia esto según tu entornoo
            }
        }
    }

    post {
        success {
            echo 'Pipeline finalizado correctamente.'
        }
        failure {
            echo 'Pipeline fallido. Revisar errores en build o test.'
        }
    }
}
