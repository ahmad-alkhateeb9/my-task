pipeline {
	agent any
    

	stages {
		

		stage('Build Docker Image') {
		 	steps {
				//"docker build -t ahmadoosh99/imagewithjenkins"
			    script {
                    echo hello
				    docker build -t . ahmadoosh99/imagewithjenkins
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