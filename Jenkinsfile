pipeline {
    agent any  // Adjust if you need a specific agent (e.g., label)
    environment {
        DOCKERHUB_CREDINETIALS = CREDIENTIALS('manikanta5315-dockerhub')
    }

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'master', // Replace with your branch name
                    url: 'https://github.com/manikanta5315/repo_public_temp1.git' // Replace with your Git repository URL
            }
        }
        stage('Build Docker Image') {
            steps {
                bat 'docker build -t maniubuntuimage:latest .' // Replace with your image name
            }
        }
        stage('Run Tests (Optional)') {
            steps {
                script {
                    // Customize testing commands based on your framework and container environment
                    bat 'docker run -d --name containermaniubuntu13 -p 8024:80 maniubuntuimage:latest sleep infinity'
                }
            }
        }
        stage('Deploy Image (Optional)') {
            steps {
                script {
                    
                        bat """
                        @ECHO OFF
                        "docker login -u ${username} --password-stdin https://hub.docker.com" <<< %password% 
                        """
                    
                    bat 'docker push maniubuntuimage:latest'
                }
            }
        }
    }


}
