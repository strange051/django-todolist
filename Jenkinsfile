pipeline {
    agent { 
        docker { 
            image 'docker:dind'
            args '--privileged -u root:root'
            reuseNode true 
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
