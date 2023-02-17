terraform {
required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
}
}
provider "aws" {
    region="us-west-2"
    access_key="AKIA6AK5B2HL6LLACCDT"
    secret_key="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"
}

resource "aws_instance" "SAP_Server_S3"{
    ami="ami-06e85d4c3149db26a"
    instance_type="t2.micro"
    tags = {
    Name = "tf-2-vxa-ec2"
  }
}
