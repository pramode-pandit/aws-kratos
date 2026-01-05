# aws-kratos

#### Project name : kratos

#### Region : ap-south-1

---

### TAG: 02-igw-module 
- Clean code to demostrate new module IGW added
- add interget_gateway and attach to the vpc

- code execution
  - terraform -chdir=tf  init
  - terraform -chdir=tf  plan  -out=plans/dev.tfplan
  - terraform -chdir=tf  apply plans/dev.tfplan  

- outputs:
  ```
  igw = {
    "igw_name" = "kratos-igw"
    "vpc_id" = "vpc-013cee55831936178"
  }
  vpc = {
    "id" = "vpc-013cee55831936178"
    "name" = "kratos-vpc"
  }
  ```

- resource cleanup
  - terraform -chdir=tf  plan  -out=plans/dev.tfplan -destoy
  - terraform -chdir=tf  apply plans/dev.tfplan 
    **<br/>Or run destroy <br/>**
  - terraform -chdir=tf destroy -auto-approve


---

### TAG: 01-vpc-module 
- Clean code to demostrate module based provisioning in terraform
- export TF_DATA_DIR=./.terraform-cache 
  - to define .terraform/ dir
- plan  -out=plans/dev.tfplan 
  - to move terraform plan file (.tfplan) to separate directory

- code execution
  - terraform -chdir=tf  init
  - terraform -chdir=tf  plan  -out=plans/dev.tfplan
  - terraform -chdir=tf  apply plans/dev.tfplan  

- outputs:
  ```
  vpc = {
    "id" = "vpc-0c609164ce802def4"
    "name" = "kratos-vpc"
  }
  ```
---
