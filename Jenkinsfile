pipeline {
    agent any

    stages {
       stage ('Build') {
            agent any

            steps {
                    // sh 'sudo chmod +x ./create_repository_git.sh'
                    sh 'sudo ./create_repository_git.sh'
            }
        }
    }
}
