pipeline {
    agent any  // Adjust if you need a specific agent (e.g., label)

    stages {
        stage('Checkingout Code') {
            steps {
                git branch: 'master', // Replace with your branch name
                    url: 'https://github.com/manikanta5315/repo_public_temp1.git' // Replace with your Git repository URL
            }
        }
        stage('Building Docker Image') {
            steps {
                bat 'docker build -t maniubuntuimage:latest .' // Replace with your image name
            }
        }
        stage('Run Tests (Optional)') {
            steps {
                script {
                    // Customize testing commands based on your framework and container environment
                    bat 'docker run -d --name containermaniubuntu56 -p 8068:80 maniubuntuimage:latest sleep infinity'
                    bat 'docker tag maniubuntuimage:latest manikanta5315/manisampleproject'
                }
            }
        }
        stage('deploy docker credientials') {
            steps {
                script {
                    // Securely store Docker registry credentials in Jenkins Credentials Management
                    withCredentials([usernamePassword(credentialsId: 'manikanta5315-dockerhub', passwordVariable: 'password', usernameVariable: 'username')]) {                      
                        bat 'echo %password% | docker login -u %username% -p %password%'
                        bat 'docker push manikanta5315/manisampleproject'
                    
                    }
                }
            }
        }
    }


}
