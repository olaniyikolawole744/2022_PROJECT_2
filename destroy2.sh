#!/bin/bash

#DESTROY DB INSTANCE
cd rds
terraform destroy "-var-file=variableValues.tfvars" --auto-approve

#DESTROY HTTPD SERVERS
cd ../
cd servers
cd httpd_server
terraform destroy "-var-file=variableValues.tfvars" --auto-approve

#DESTROY TOMCAT
cd ../
cd tomcat_server
terraform destroy "-var-file=variableValues.tfvars" --auto-approve

#DESTROY ELB 
cd ../../
cd elb
terraform destroy "-var-file=variableValues.tfvars" --auto-approve

#DESTROY AUTOSCALING
cd ..
cd asg_module
terraform destroy "-var-file=variableValues.tfvars" --auto-approve

#DESTROY CLOUDFRONT
cd ../
cd cloudfront
terraform destroy "-var-file=variableValues.tfvars" --auto-approve

#DESTROY VPC
#cd ..
#cd vpc
#terraform destroy "-var-file=variableValues.tfvars" --auto-approve