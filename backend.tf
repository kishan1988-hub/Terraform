/*terraform {
  backend "s3" {
    #Replace this with your bucket name!
    bucket         = "mg-terraform-state"
    key            = "mg/s3/terraform.tfstate"
    region         = "ap-south-1"
    #Replace this with your DynamoDB table name!
    dynamodb_table = "tf-up-and-run-locks"
    encrypt        = true
    }
}
*/
