pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
            }
        }
        stage('Init') {
            steps {
                echo 'Initialisation'
            }
        }
        stage('build') {
            steps {
                echo 'Building application'
            }
        }
         stage('Tests') {
            steps {
                echo 'Testing application'
            }
        }
         stage('Deploy') {
            steps {
                echo 'Deploying application'
            }
        }
    }
}
