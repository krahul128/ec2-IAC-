# Terraform AWS EC2 Instance with Key Pair and Security Group

This Terraform project sets up an AWS EC2 instance with an attached key pair and security group. The configuration uses the default VPC and is designed to provide secure SSH access to the instance.

Terraform Commands
1. Terraform Initialization: terraform init
The terraform init command is used to initialize a Terraform configuration. This command performs several tasks such as downloading the necessary provider plugins, setting up the backend, and preparing the working directory for other Terraform commands. You should run this command when setting up a new or existing Terraform configuration to ensure that all dependencies are correctly configured.
  terraform init

2. Terraform Planning: terraform plan
The terraform plan command creates an execution plan, showing what actions Terraform will take to change your infrastructure to match the desired state. This command is useful for reviewing the changes Terraform will make before actually applying them, helping you avoid unexpected modifications.
  terraorm plan

3. Terraform Application: terraform apply
The terraform apply command applies the changes required to reach the desired state of the configuration. It executes the planned actions and updates your infrastructure. After reviewing the plan with terraform plan, you can run this command to apply the changes.
 terraform apply
