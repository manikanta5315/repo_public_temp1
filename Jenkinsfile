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
                    bat 'docker run -d --name containermaniubuntu4 -p 8015:80 maniubuntuimage:latest sleep infinity'
                }
            }
        }
        stage('Deploy Image (Optional)') {
            steps {
                script {
                    // Securely store Docker registry credentials in Jenkins Credentials Management
                    withCredentials([usernamePassword(credentialsId: {"https://index.docker.io/v1/":"manikanta5315"}, usernameVariable: 'manikanta5315', passwordVariable: '9618676960i')]) {
                        bat "docker login -u ${manikanta5315} -p ${9618676960i} https://hub.docker.com" // Replace with your registry details and credentials ID
                    }
                    bat 'docker push maniubuntuimage:latest'
                }
            }
        }
    }


}
