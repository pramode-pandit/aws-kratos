# aws-kratos

#### Project name : kratos

#### Region : ap-south-1

---

### TAG: 04-ec2-module 
- Clean code to demostrate new module ec2 added
- consist of key gen, security group  

- code execution
  - terraform -chdir=tf  init
  - terraform -chdir=tf  plan  -out=plans/dev.tfplan
  - terraform -chdir=tf  apply plans/dev.tfplan  

- outputs:

  ```
  igw = {
    "igw_id" = "igw-00aa5d9ece5bde253"
    "igw_name" = "kratos-igw"
    "vpc_id" = "vpc-02f0d1d8f7519ec0f"
  }
  instance_ec20 = {
    "instance_name" = "kratos-ec20"
    "key_name" = "kratos-ec20-key"
    "subnet_id" = "subnet-08ff95e7d35c5d896"
  }
  public_rt = {
    "igw_id" = "igw-00aa5d9ece5bde253"
    "route_name" = "keratos-public-subnet-rt"
    "subnet_id" = "subnet-08ff95e7d35c5d896"
  }
  subnet = {
    "public_subnet_cidr" = "10.0.1.0/24"
    "public_subnet_name" = "kratos-public-subnet"
    "subnet_id" = "subnet-08ff95e7d35c5d896"
    "vpc_id" = "vpc-02f0d1d8f7519ec0f"
  }
  vpc = {
    "id" = "vpc-02f0d1d8f7519ec0f"
    "name" = "kratos-vpc"
    "vpc_cidr" = "10.0.0.0/16"
  } 
  ```

- resource cleanup
  - terraform -chdir=tf  plan  -out=plans/dev.tfplan -destoy
  - terraform -chdir=tf  apply plans/dev.tfplan 
    **<br/>Or run destroy <br/>**
  - terraform -chdir=tf destroy -auto-approve

---

### TAG: 03-subnet-module 
- Clean code to demostrate new module subnet added
- consist of public subnet, custom route table 
- add route_table_association to map subnet and and route table 

- code execution
  - terraform -chdir=tf  init
  - terraform -chdir=tf  plan  -out=plans/dev.tfplan
  - terraform -chdir=tf  apply plans/dev.tfplan  

- outputs:
  ```
  igw = {
    "igw_id" = "igw-08f273e8b9aaa2d75"
    "igw_name" = "kratos-igw"
    "vpc_id" = "vpc-0583a436ddae0a532"
  }
  public_rt = {
    "igw_id" = "igw-08f273e8b9aaa2d75"
    "route_name" = "keratos-public-subnet-rt"
    "subnet_id" = "subnet-0f6b574b154de4721"
  }
  subnet = {
    "public_subnet_cidr" = "10.0.1.0/24"
    "public_subnet_name" = "kratos-public-subnet"
    "vpc_id" = "vpc-0583a436ddae0a532"
  }
  vpc = {
    "id" = "vpc-0583a436ddae0a532"
    "name" = "kratos-vpc"
    "vpc_cidr" = "10.0.0.0/16"
  }
  ```

- resource cleanup
  - terraform -chdir=tf  plan  -out=plans/dev.tfplan -destoy
  - terraform -chdir=tf  apply plans/dev.tfplan 
    **<br/>Or run destroy <br/>**
  - terraform -chdir=tf destroy -auto-approve

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
