pipeline {
  
  agent any

  options {
    // Keep only 1 artifact, and many builds
    buildDiscarder(logRotator(numToKeepStr: '1000', artifactNumToKeepStr: '0'))
  }

  stages {

  	stage('Build the code') {
		steps {
			script {
		  		docker.image('openjdk:8-jdk-alpine').inside('-v /var/jenkins_home/.m2:/root/.m2') {
		  			sh '''
		  				./mvnw clean package -DskipTests
		  			'''
		  		}
		  	}
			sh './mvnw clean package -DskipTests'
			sh 'pwd'
			sh 'ls -la'
			sh 'docker build --pull -t loxon/petclinic:2.0.0 .'
			sh 'docker push loxon/petclinic:2.0.0'
		}
	}

  }

}