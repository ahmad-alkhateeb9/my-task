pipeline {
	agent any
	// agent { docker { image 'maven:3.6.3'} }
	// agent { docker { image 'node:13.8'} }

	stages {
		
		

		stage('Test') {
			steps {
				echo "testing"
			}
		}

		stage('Build Docker Image') {
		 	steps {
				//"docker build -t imageWithJenkins"
			    script {
				dockerImage = docker.build("imageWithJenkins")
		 		}

		 	}
		}

		 stage('Push Docker Image') {
			steps {
		 		script {
		 			docker.withRegistry('', 'dockerhub') {
		 				dockerImage.push();
						dockerImage.push('latest');
		 			}
		 		}
		 	}
		 }
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