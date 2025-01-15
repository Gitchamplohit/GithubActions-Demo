provider "aws" {
  region = "ap-south-1"

}

terraform {
  backend "s3" {
    bucket = "githubactionswithterraform"
    region = "ap-south-1"
    key    = "Actions.tfstate"

  }
}

resource "aws_vpc" "GA-VPC" {
  cidr_block           = ["10.0.0.0/16"]
  enable_dns_hostnames = true

  tags = {
    Name = "GA-VPC"
  }

}
