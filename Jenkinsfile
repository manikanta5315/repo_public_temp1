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
          def fileContents = readFile filename: "https://github.com/manikanta5315/repo_public_temp1/blob/master/three_manikanta.txt"
          echo "File contents: ${fileContents}"
        }
      }
    }
  }
}

