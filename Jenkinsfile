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
                    bat 'docker run -d --name containermaniubuntu48 -p 8060:80 maniubuntuimage:latest sleep infinity'
                }
            }
        }
        stage('deploy docker credientials') {
            steps {
                script {
                    // Securely store Docker registry credentials in Jenkins Credentials Management
                    docker.withRegistry('https://index.docker.io', credentialsId: 'manikanta5315-dockerhub') {
                       docker.push('maniubuntuimage:latest') 
                    }
                }
            }
        }
    }


}
