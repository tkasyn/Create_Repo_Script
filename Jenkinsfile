pipeline {
    agent any

    stages {
       stage ('Build') {
            agent any
                withCredentials([string(credentialsId: '7483dec3-81dc-40b6-9b62-49bce24ad193', variable: 'GITHUB_TKN')])
                  steps {
                    // sh 'sudo chmod +x ./create_repository_git.sh'
                    sh "chmod +x -R ${env.WORKSPACE}"
                    sh "./create_repository_git.sh"
            }
        }
    }
}
