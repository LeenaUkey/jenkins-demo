pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                echo 'Cloning repository...'
                git 'https://github.com/LeenaUkey/jenkins-demo.git'
            }
        }

        stage('Setup NGINX') {
            steps {
                echo 'Making script executable...'
                sh 'sudo chmod +x nginx-setup.sh'

                echo 'Running NGINX setup script...'
                sh './nginx-setup.sh'
            }
        }
    }
}
