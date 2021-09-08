pipeline {
    environment {
        APPLICATION_NAME = "php-apache"
        GIT_REPO="https://github.com/vohanks354/jenkins.git"
        GIT_BRANCH="master"
        STAGE_TAG = "promoteToQA"
        DEV_PROJECT = "dev"
        STAGE_PROJECT = "stage"
        TEMPLATE_NAME = "kirom-php-mysql-template"
        ARTIFACT_FOLDER = "target"
        PORT = 8082
        YAML_FILE = "kirom-php-mysql.yaml";
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
                    sh 'oc delete template -l app=app-kirom'
                    sh 'oc delete all -l app=app-kirom'
                    sh 'oc delete all -l app=db-kirom'
                }
            }
        }
        stage("Build App") {
            steps {
                script{
                    sh "oc create -f ${YAML_FILE}"
                    sh "oc new-app ${TEMPLATE_NAME}"
                }
            }
        }
    }
}
