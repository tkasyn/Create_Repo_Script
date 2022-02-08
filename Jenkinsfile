pipeline {
    agent any

    stages {
       stage ('Build') {
            agent any

            steps {
                    // sh 'sudo chmod +x ./create_repository_git.sh'
                    sh "chmod +x -R ${env.WORKSPACE}"
                    sh "./create_repository_git.sh"
            }
        }
    }
}
