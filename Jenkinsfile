pipeline {
    environment {
        APPLICATION_NAME = "php-apache"
        GIT_REPO="https://github.com/vohanks354/jenkins.git"
        GIT_BRANCH="master"
        STAGE_TAG = "promoteToQA"
        DEV_PROJECT = "dev"
        STAGE_PROJECT = "stage"
        TEMPLATE_NAME = "php-apache"
        ARTIFACT_FOLDER = "target"
        PORT = 8082;
    }

    agent any
    stages{
        stage('Get Latest Code') {
            steps {
                git branch: "${GIT_BRANCH}", url: "${GIT_REPO}" // declared in environment
            }
        }
        stage("Remove Old") {
            steps {
                script{
                    try{
                        sh 'oc delete all -l app=app-kirom'
                        sh 'oc delete all -l app=db-kirom'
                    }
                    catch(exeption ex){
                        sh 'echo app not found'
                    }
                }
            }
        }
    }
}
