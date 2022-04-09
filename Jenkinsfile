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
                cd ansible_jobs
                chmod 755 inventory/hosts/ec2.ini
                chmod 755 inventory/hosts/ec2.py
                pip install boto
     withCredentials([sshUserPrivateKey(credentialsId: 'e1132bff-712f-4ff9-977e-87082ef66837', keyFileVariable: 'private_key', usernameVariable: 'username')]) {
     
         sh 'ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook --u $username --private-key $private_key playbook/playbook.yml -i inventory/hosts/ec2.py -vvvvv'
 
}
                }
        } 
          
    }
}