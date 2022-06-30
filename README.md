Terraform 

Infrastructure as code (IaC) tools allow you to manage infrastructure with configuration files rather than through a graphical user interface. IaC allows you to build, change, and manage your infrastructure in a safe, consistent, and repeatable way by defining resource configurations that you can version, reuse, and share.

In this repo - i have saved some of the basic terraform script written for creating AWS resources.

List of resources :
        - EC2
        - S3 Bucket
        - DynamoDB 

Commands to be used:

    - terraform init
    - terrform plan
    - terraform apply
    
tfsate would be saved initially in the local directory on your machine, it can be moved to remote S3 bucket by uncommenting backend.tf

to decomission this resource created - initally update the backend configuration to local & then proceed to destroy.
