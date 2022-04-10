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
                sh 'cd ansible_jobs'
              sh 'chmod 755 ansible_jobs/inventory/hosts/ec2.ini'
               sh 'chmod 755 ansible_jobs/inventory/hosts/ec2.py'
              sh  'pip install boto'
         withCredentials([sshUserPrivateKey(credentialsId: 'c959f82d-964f-4b1e-a30f-570c8004a503', keyFileVariable: 'second-key', usernameVariable: 'ansible-user')]) {
         sh 'ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook --u $ansible-user --private-key $second-key ansible_jobs/playbook/playbook.yml -i ansible_jobs/inventory/hosts/ec2.py -vvvvv'
         }
    }
} 
          
    }
}