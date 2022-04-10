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

          stage('PLAY ANSIBLE BOOK..') {
             steps {
            sh 'cd ansible_jobs'
            sh 'chmod 755 ansible_jobs/inventory/hosts/ec2.ini'
            sh 'chmod 755 ansible_jobs/inventory/hosts/ec2.py'
            sh  'pip install boto'        
            
            withCredentials([sshUserPrivateKey(credentialsId: 'ansible', keyFileVariable: 'privateKey', usernameVariable: 'username')]) {
            sh 'ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook --u $username --private-key $privateKey ansible_jobs/playbook/playbook.yml -i ansible_jobs/inventory/hosts/ec2.py -vvvvv'
            }
          }
        }     
     }
  }