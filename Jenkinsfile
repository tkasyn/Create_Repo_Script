pipeline {
    agent any

    stages {
       stage ('Build') {
            agent any

            steps {
                    // sh 'sudo chmod +x ./create_repository_git.sh'
                    sh './create_repository_git.sh'
            }
        }
    }
}
