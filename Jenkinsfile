pipeline{
    agent { label 'test-server' }
     environment {
        CREDENTIALS=credentials('sudopass')

    }


    stages{
        stage('Git checkout')
        {
            steps{
                git branch: 'main', url: 'https://github.com/shubham16sky/flask-news-app.git'
            }
        }
        stage('Docker build')
        {
            steps{
                sh 'docker build -t flask-ci-cd .'
            }
        }
        stage('Removing Dangling images')
        {
            steps{
                sh 'docker image ls -q -f "dangling=true"'
            }
        }
        stage('Docker run')
        {
            steps{
                sh 'echo $sudopass | ./script.sh'
            }
        }
    }
}
