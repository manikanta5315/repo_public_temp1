pipeline {
  agent any

  stages {
    stage('Checkout Git Repository') {
      steps {
        git branch: 'master', url: 'https://github.com/manikanta5315/repo_public_temp1.git'
      }
    }
    stage('Print File Contents') {
      steps {
        script {
          def fileContents = readFile filename: "C:/git_folder/repo_public_temp1/repo_public_temp1/three_manikanta.txt"
          echo "File contents: ${fileContents}"
        }
      }
    }
  }
}

