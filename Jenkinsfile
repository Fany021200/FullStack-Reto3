pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/tu-usuario/tu-repositorio.git'
            }
        }
        stage('Install Dependencies') {
            steps {
                sh 'npm install' // O el comando necesario para tu entorno
            }
        }
        stage('Test') {
            steps {
                sh 'npm test' // O el comando necesario para tus pruebas
            }
        }
        stage('Deploy to AWS Lambda') {
            steps {
                withAWS(credentials: 'aws-credentials-id', region: 'us-east-1') {
                    lambdaInvoke(functionName: 'your-lambda-function-name', payload: '{}')
                }
            }
        }
    }
}
