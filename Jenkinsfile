pipeline {
    agent any

    stages {
        stage('Build') {
			steps {
				echo 'Instalando dependencias...'
				sh 'npm install --legacy-peer-deps'
				echo '✅ Dependencias instaladas correctamente.'
			}
		}
        stage('Testing') {
            steps {
                echo 'Ejecutando tests...'
                sh 'npm test -- --watchAll=false'
            }
        }

        stage('Deploy en contenedor base') {
            steps {
                echo 'Realizando build del proyecto...'
                sh 'npm run build'

                echo 'Copiando build a carpeta pública...'
                sh 'cp -r build/* /var/www/html/'  // Ajusta si usas otro destino
            }
        }

        stage('Deploy en contenedor Docker') {
            steps {
                script {
                    echo 'Construyendo imagen Docker...'
                    sh 'docker build -t react-app .'

                    echo 'Levantando contenedor Docker...'
                    sh 'docker run -d -p 3000:80 --name app_container react-app || true'
                }
            }
        }
    }

    post {
        always {
            echo 'Pipeline de CD completado.'
        }
    }
}
