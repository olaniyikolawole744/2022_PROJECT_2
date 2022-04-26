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

          stage('CHANGE PERMISSION') {
             steps {
            sh 'cd ansible_jobs'
            sh 'chmod 755 ansible_jobs/inventory/hosts/ec2.ini'
            sh 'chmod 755 ansible_jobs/inventory/hosts/ec2.py'
            sh  'pip install boto'        
          }
        }   


        stage('PLAY ANSIBLE BOOK..') {
            steps { 
            withCredentials([sshUserPrivateKey(credentialsId: '4f39828f-a5c4-4f5f-849d-af86244b6214', keyFileVariable: 'private_key', usernameVariable: 'username')]) {
            sh 'ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook --u $username --private-key $private_key ansible_jobs/playbook/playbook.yml -i ansible_jobs/inventory/hosts/ec2.py'
        }
            
          }
        }      
     }
  }


  