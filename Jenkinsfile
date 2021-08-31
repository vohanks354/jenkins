pipeline{
    agent {
        docker { image 'node:14-alpine' }
    }
    environment {
        PATH = "$PATH:/usr/local/bin"
    }
    stages{
        stage("Stage Docker"){
            steps{
                echo "========executing A========"
                sh 'node --version'
            }
            post{
                always{
                    echo "========always========"
                }
                success{
                    echo "========A executed successfully========"
                }
                failure{
                    echo "========A execution failed========"
                }
            }
        }
    }
    post{
        always{
            echo "========always========"
        }
        success{
            echo "========pipeline executed successfully ========"
        }
        failure{
            echo "========pipeline execution failed========"
        }
    }
}