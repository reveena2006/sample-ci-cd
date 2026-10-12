pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                bat 'if not exist index.html exit /b 1'
                echo 'BUILD SUCCESSFUL'
            }
        }
        stage('Test') {
            steps {
                bat 'test.bat'
            }
        }
        stage('Deploy') {
            steps {
                bat 'if not exist deploy mkdir deploy'
                bat 'copy /Y index.html deploy\index.html'
                echo 'DEPLOYMENT SUCCESSFUL'
            }
        }
    }
}
