pipeline {
  agent any

  stages {
    stage('Checkout Git Repository') {
      steps {
        git branch: 'master', // Replace 'public1' with your branch name (if necessary)
          url: 'https://github.com/manikanta5315/repo_public_temp1.git'
      }
    }
    stage('Print File Contents') {
      steps {
        script {
          // Read the contents of a file (replace "public1.txt" with your actual filename)
          def fileContents = readFile filename: 'three_manikanta.txt'
          echo "File contents: ${fileContents}" // Print the contents to the console
        }
      }
    }
  }
}
