pipeline {
    agent any 
    stages {
        stage('Stage 1') {
            steps {
                git branch: 'main', credentialsId: '1aa5da85-1a5f-4cf5-ac87-f17f3212723d', url: 'git@github.com:ahmad-alkhateeb9/my-task.git'
                echo 'Hello world!' 
                ls
            }
        }
    }
}
