pipeline {
    agent any

    stages {
        stage('build') {
            steps {
                sh 'docker build -t django-todo .'
            }
        }
        stage('test') {
            steps {
                sh 'docker run -t django-todo python manage.py test'
            }
        }
        stage('deploy') {
            steps {
                sh 'docker run -d -p 8000:8000 django-todo'
            }
        }
    }
    post {
        failure {
            echo "Tests failed, not deploying"
        }
    }
}
