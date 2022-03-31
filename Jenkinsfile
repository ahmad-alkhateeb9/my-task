pipeline {
	agent any
    

	stages {
        stage('git clone'){
            steps{
		        git branch: 'main', credentialsId: '1aa5da85-1a5f-4cf5-ac87-f17f3212723d', url: 'git@github.com:ahmad-alkhateeb9/my-task.git'
            }
        }
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