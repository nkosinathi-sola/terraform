provider "aws" {
    profile = "default"
    region  = "us-west-2"
}

resource "aws_s3_bucket" "tutotial_aws" {
    bucket = "tutorial-aws-20210807"
    acl    = "private"
}