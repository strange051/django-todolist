pipeline {
    agent any

    stages {
        stage('deploy') {
            steps {
                withDockerContainer('docker:dind') {
                    sh 'docker build -t django-todo .'
                    sh 'docker run -d -p 8000:8000 django-todo'
                }
            }
        }
    }
}
