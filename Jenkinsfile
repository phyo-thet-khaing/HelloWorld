pipeline {
    agent {
        docker {
            image 'maven:3.9.3-eclipse-temurin-17'
            args '-v $HOME/.m2:/root/.m2'
        }
    }

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/phyo-thet-khaing/HelloWorld.git'
            }
        }

        stage('Build') {
            steps { sh 'mvn clean compile' }
        }

        stage('Test') {
            steps { sh 'mvn test' }
        }

        stage('Package') {
            steps { sh 'mvn package -DskipTests' }
        }

        stage('Run Application') {
            steps { sh 'java -jar target/HelloWorldHTML-0.0.1-SNAPSHOT.jar' }
        }
    }

    post {
        success { echo 'Build Successful!' }
        failure { echo 'Build Failed!' }
    }
}
