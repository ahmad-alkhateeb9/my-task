pipeline {
	agent any
	// agent { docker { image 'maven:3.6.3'} }
	// agent { docker { image 'node:13.8'} }

	stages {
		stage('Checkout') {
			steps {
				echo "Build"
				echo "PATH "
				echo "BUILD_NUMBER "
				echo "BUILD_ID "
				echo "JOB_NAME "
				echo "BUILD_TAG "
				echo "BUILD_URL "
			}
		}
		stage('Compile') {
			steps {
				//sh "mvn clean compile"
                echo "comipling"
			}
		}

		stage('Test') {
			steps {
				echo "testing"
			}
		}

		stage('Integration Test') {
			steps {
				//sh "mvn failsafe:integration-test failsafe:verify"
                echo "integrations test"
			}
		}

		stage('Package') {
			steps {
				//sh "mvn package -DskipTests"
                echo "package time"
			}
		}

		// stage('Build Docker Image') {
		// 	steps {
		// 		//"docker build -t in28min/currency-exchange-devops:$env.BUILD_TAG"
		// 		script {
		// 			dockerImage = docker.build("in28min/currency-exchange-devops:${env.BUILD_TAG}")
		// 		}

		// 	}
		// }

		// stage('Push Docker Image') {
		// 	steps {
		// 		script {
		// 			docker.withRegistry('', 'dockerhub') {
		// 				dockerImage.push();
		// 				dockerImage.push('latest');
		// 			}
		// 		}
		// 	}
		// }
	} 
	
	post {
		always {
			echo 'Im awesome. I run always'
		}
		success {
			echo 'I run when you are successful'
		}
		failure {
			echo 'I run when you fail'
		}
	}
}