sudo su - ansible && 
pipeline {
    agent any

    environment {
        
        ANSIBLE_HOSTS="ansible/inventory/ec2.py"
        EC2_INI_PATH="ansible/inventory/ec2.ini"
        
    }

    stages {

        stage('CREATE INFRASTRUCTURE') {
             steps {
                sh 'chmod 755 script2.sh'
                sh './script2.sh'
                }
        } 

        stage('PLAY ANSIBLE BOOK.') {
             steps {
                sh 'chmod 755 ansible.sh'
                sh './ansible.sh'}
        }   
    }
}