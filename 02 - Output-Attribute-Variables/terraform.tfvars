# below we have defined the value to be passed for the variables referenced in the file variable-handle.tf
# if we need to rename this file from terraform.tfvars to some other name - then pass the file name during the execution
# by calling -var-file ="custom.tfvar"

elb_name = "mk-elb"
timeout = "250"
az = ["ap-south-1","us-west-1a"]
istest = false
