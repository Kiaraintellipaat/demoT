pipeline {
    agent any
    
    stages {
        stage('Terraform Init') {
            steps {
                sh 'terraform init -reconfigure'
            }
        }
        
        stage('Terraform Plan') {
            steps {
                timeout(time: 5, unit: 'MINUTES') {
                    sh 'terraform plan -input=false'
                }
            }
        }
        
        stage('Terraform Apply') {
            steps {
                input message: 'Approve deployment?', ok: 'Deploy'
                timeout(time: 10, unit: 'MINUTES') {
                    sh 'terraform apply -input=false -auto-approve'
                }
            }
        }
    }
}
