# aws-kratos

#### Project name : kratos

#### Region : ap-south-1

### TAG: 01-vpc-module 
- Clean code to demostrate module based provisioning in terraform
- export TF_DATA_DIR=./.terraform-cache 
  - to define .terraform/ dir
- plan  -out=plans/dev.tfplan 
  - to move terraform plan file (.tfplan) to separate directory

- code execution
  - terraform -chdir=tf  init
  - terraform -chdir=tf  plan  -out=plans/dev.tfplan
  - terraform -chdir=tf  apply plans/dev.tfplan  -auto-approve

- outputs:
  ```
  vpc = {
    "id" = "vpc-0c609164ce802def4"
    "name" = "kratos-vpc"
  }
  ```
