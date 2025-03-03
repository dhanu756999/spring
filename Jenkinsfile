pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'your-dockerhub-username/your-app'
        DOCKER_TAG = 'latest'
    }

    stages {

        stage('Build with Maven') {
            steps {
                script {
                    mvn sonar:sonar -Dsonar.host.url=http://98.70.25.240/:9000 -Dsonar.login=admin -Dsonar.password=admin123
                }
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh "docker build -t petclinic:v1 ."
                }
            }
        }
  }
}