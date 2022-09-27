pipeline {
    agent any
    environment {
        TF_VAR_tenancy_ocid       = credentials('TF_VAR_tenancy_ocid')
        TF_VAR_user_ocid          = credentials('TF_VAR_user_ocid')
        TF_VAR_fingerprint        = credentials('TF_VAR_fingerprint')
        TF_VAR_private_key        = credentials('TF_VAR_private_key')
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
                sh 'terraform plan --var-file var.tfvars -no-color'
            }
        }
        stage ('Apply') {
            steps {
                sh 'terraform apply --var-file var.tfvars --auto-approve -no-color'
            }
        }
    }

}