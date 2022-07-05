Output-Attributes-Variables

In this session we are going to see the ways we can communicate with the terraform script to provide values to create various resources.

    1. Handling attributes and Outputs
    2. Attribute References
    3. Variables & Usage

Commands used in here are:
    terraform plan
    terraform apply 
    terraform destroy  # please run it to clean up once you are done with the practice session.
    terraform plan -var elb_name = "sample-elb"
    terraform plan -var-file = "custom.tfvars"
