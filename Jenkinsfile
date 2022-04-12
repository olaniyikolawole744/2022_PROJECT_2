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
                sh 'chmod 755 destroy2.sh'
                sh './destroy2.sh'
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
            withCredentials([sshUserPrivateKey(credentialsId: '554b9cec-008e-4236-aec9-ac5b71c618b6', keyFileVariable: 'private_key', usernameVariable: 'username')]) {
            sh 'ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook --u $username --private-key $private_key ansible_jobs/playbook/playbook.yml -i ansible_jobs/inventory/hosts/ec2.py -vvvvv'
            }
          }
        }      
     }
  }


  