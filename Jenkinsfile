pipeline {
    agent any

    environment {
        PATH = "/home/skiptomy/.rvm/rubies/ruby-3.2.2/bin:$PATH"
    }

    stages {
        stage('Setup') {
            steps {
                script {
                    // Install dependencies
                    sh 'gem install bundler'
                    sh 'bundle install'
                }
            }
        }

        stage('Run Cucumber Tests') {
            steps {
                script {
                    // Run Cucumber tests, excluding any tagged with @api
                    sh 'bundle exec cucumber'
                }
            }
        }
    }

    post {
        always {
            archiveArtifacts artifacts: 'features/reports/*.json', allowEmptyArchive: true
            junit 'features/reports/*.xml'
        }
    }
}
