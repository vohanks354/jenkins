String person = 'kirom'
def anotherperson = 'ricard'
def people = ['satu','dua', 'tiga']
node{
    stage('Hello'){
        echo "Hello ${person} and ${anotherperson}"
    }

    stage('If'){
        if (env.BRANCH_NAME == 'main'){
            echo 'branch main'
        } else {
            echo 'branch another'
        }

    }

    stage('Looping'){
        for(i = 0; i < people.size(); i++){
            echo "hello ${people[i]}"
        }
    }

    stage('Function'){
        namaOrang('Openshift')
    }

    stage('install npm'){
        sh 'docker --version'
    }

    stage('Install Dependencies') {
        dir('exchange-cli')
        sh 'npm install'
    }
    stage('Unit Test') {
        dir('exchange-cli')
        sh 'npm run build'
    }
}

def namaOrang(person){
    echo "${person}"
}