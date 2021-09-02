String person = 'kirom'
def anotherperson = 'ricard'
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
}