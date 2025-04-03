pipeline {
    agent { 
        docker { 
            image 'python:3.13.2-alpine3.21' 
        } 
    }
    stages {
        stage('deploy') {
            steps {
                sh '''                    
                    # Build the Docker image
                    docker build -t django-todo .
                    
                    # Run the Docker container
                    docker run -d -p 8000:8000 django-todo
                '''
            }
        }
    }
}
