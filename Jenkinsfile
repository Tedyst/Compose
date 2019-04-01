pipeline {
    agent any
    stages {
        stage('Clone repository') {
            steps {
                checkout scm
            }
        }

        stage('Jenkins Runner image') {
            steps {
                script {
                    if (env.BRANCH_NAME == 'master') {
                        script {
                            dir("jenkins/runner") {
                                image = docker.build("tedyst/jenkins-slave")
                                docker.withRegistry('', 'docker') {
                                    image.push("latest")
                                }
                            }
                        }
                    }
                }
            }
        }   
    }
    
}
