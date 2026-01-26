pipeline {
    agent any

    
     tools{
       maven "maven 3.9"
       }

    environment {
        DOCKER_REPO = "phyothetkhaing/hellohtml"
        APP_JAR = "target\\HelloWorldHTML-0.0.1-SNAPSHOT.jar"
        DOCKER_CREDENTIALS_ID = "dockerhub-credentials"
        DOCKER_HOST_PORT = "8081"
    }

    stages {

        stage('Checkout Code') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/phyo-thet-khaing/HelloWorld.git'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean compile'
            }
        }

        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }

        stage('Package') {
            steps {
                sh 'mvn package -DskipTests'
            }
        }

        stage('Run Application') {
            steps {
                sh 'java -jar target/HelloWorldHTML-0.0.1-SNAPSHOT.jar'
            }
        }
    }

    post {
        success {
            echo 'Build Successful!'
        }
        failure {
            echo 'Build Failed!'
        }
    }
}
