pipeline {
    agent any
    environment {
        tenancy_ocid     = credentials('tenancy_ocid')
        user_ocid        = credentials('user_ocid')
        fingerprint        = credentials('fingerprint')
        private_key        = credentials('private_key')
    }
    stages {

        stage ('Generate key pairs') {
            steps {
                sh 'ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa -N ""'
            }
        }
        stage ('Init') {
            steps {
                sh 'terraform init'
            }
        }
        stage ('Plan') {
            steps {
                sh 'terraform plan --var-file var.tfvars - no-color'
            }
        }
        stage ('Apply') {
            steps {
                sh 'terraform apply --var-file var.tfvars --auto-approve -no-color'
            }
        }
    }

}