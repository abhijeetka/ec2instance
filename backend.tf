terraform {
  backend "s3" {
    bucket         = "terraform-global-state-techstack-acc"
    key            = "terraform-iac-ec2/terraform.tfstate"
    region         = "us-east-1"
  }
}
