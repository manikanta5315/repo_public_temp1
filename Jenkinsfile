pipeline {
    agent any  // Adjust if you need a specific agent (e.g., label)

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
                    bat 'docker run -d --name containermaniubuntu34 -p 8046:80 maniubuntuimage:latest sleep infinity'
                }
            }
        }
        stage('Deploy Image (Optional)') {
            steps {
                script {
                    // Securely store Docker registry credentials in Jenkins Credentials Management
                    withCredentials([usernamePassword(credentialsId: 'manikanta5315-dockerhub', passwordVariable: 'DOCKER_USERNAME', usernameVariable: 'DOCKER_PASSWORD')]) {
                       sh "docker login -u ${manikanta5315} -p ${9618676960i} https://hub.docker.com"
                        bat 'docker push maniubuntuimage:latest'
                    
                    }
                }
            }
        }
    }


}
