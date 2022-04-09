pipeline {
    agent any

    environment {
        
        ANSIBLE_HOSTS="ansible_jobs/inventory/ec2.py"
        EC2_INI_PATH="ansible_jobs/inventory/ec2.ini"
        
    }

    stages {

        stage('CREATE INFRASTRUCTURE') {
             steps {
                sh 'ls'
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