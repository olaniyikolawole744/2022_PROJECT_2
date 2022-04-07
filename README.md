## This project deploys terraform in creating a non default VPC and provisioning two httpd servers in public subnet, two tomcat servers in pravate subnet and an RDS instance in a private subnet. The web servers are attached to an ELB for failover. All terraform states are stored in an s3 bucket and each server is exposed using security group according to buniess need.

### To create this infrastructure, follow below steps:
 * Change the linux script permission by typing: chmod 755 script.sh and press enter key
 * Execute the linux script by typing: ./script2.sh and press enter key 

### To destroy this infrastructure, follow below steps:
 * Change the linux script permission by typing: chmod 755 destroy.sh and press enter key
 * Execute the linux script by typing: ./destroy2.sh and press enter key 
