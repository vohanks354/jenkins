pipeline {
    agent any
    environment {
        GOCACHE = '/tmp/gocache'
        def dockerHome = tool 'docker'
        env.PATH = "${dockerHome}/bin"
    }
    stages {
        stage('build') {
            steps {
                sh 'go build'
            }
        }
        stage('test') {
            steps {
                sh 'go test ./...'
            }
        }
    }
}