pipeline {
    agent any
    environment {
        GOCACHE = '/tmp/gocache'
        def dockerHome = tool 'docker'
        // env.PATH = "${dockerHome}/bin"
    }
    stages {
        stage('build') {
            steps {
                echo "PATH ${env.PATH}"
                // sh 'go build'
            }
        }
        stage('test') {
            steps {
                echo "PATH is: ${env.PATH}"
                // sh 'go test ./...'
            }
        }
    }
}