#!/bin/bash

#CREATE VPC
#cd vpc
#terraform init
#terraform fmt
#terraform validate
#terraform plan "-var-file=variableValues.tfvars"
#terraform apply "-var-file=variableValues.tfvars" --auto-approve

#CREATE HTTPD SERVERS
#cd ..
cd servers
cd httpd_server
terraform init
terraform fmt
terraform validate
#terraform plan "-var-file=variableValues.tfvars"
terraform apply "-var-file=variableValues.tfvars" --auto-approve

#CREATE TOMCAT SERVERS
cd ..
cd tomcat_server
terraform init
terraform fmt
terraform validate
#terraform plan "-var-file=variableValues.tfvars"
terraform apply "-var-file=variableValues.tfvars" --auto-approve

#CREATE ELASTIC LOAD BALANCER
cd ../../
cd elb
terraform init
terraform fmt
terraform validate
#terraform plan "-var-file=variableValues.tfvars"
terraform apply "-var-file=variableValues.tfvars" --auto-approve

#CREATE DATABASE INSTANCE
cd ../
cd rds
terraform init
terraform fmt
terraform validate
#terraform plan "-var-file=variableValues.tfvars"
terraform apply "-var-file=variableValues.tfvars" --auto-approve