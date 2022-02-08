pipeline {
    agent any

    stages {

       stage ("Prompt for input") {
            steps {
                script {
                    env.REP_NAME = input message: 'Please enter a new Repository Name',
                             parameters: [string(defaultValue: '',
                                          description: '',
                                          name: 'Repository_Name')]
                }
                        echo "Repository Name: ${env.REP_NAME}"
            }
        }

       stage ('Build') {
            agent any

            steps {
                    // sh 'sudo chmod +x /home/ubuntu/scripts/create_repository_git.sh'
                    sh '/home/ubuntu/scripts/create_repository_git.sh'
            }
        }
    }
}
