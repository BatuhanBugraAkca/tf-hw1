# Terraform backend yapılandırması
terraform {
  backend "s3" {
    bucket = "batuakca-terraform-backend"   
    key    = "terraform.tfstate"        
    region = "us-east-1"               
  }
}

# AWS Provider Tanımı
provider "aws" {
  region = "us-east-1"
}


resource "aws_s3_bucket" "first_bucket" {
  bucket = "batuhanakcatentech-bucket-one"
}

resource "aws_s3_bucket" "second_bucket" {
  bucket = "batuhanakcatentech-bucket-two"
}

resource "aws_s3_bucket" "third_bucket" {
  bucket = "batuhanakcatentech-bucket-three"
}
resource "aws_vpc" "vpc_one" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "batuhan-vpc-one"
  }
}

resource "aws_vpc" "vpc_two" {
  cidr_block = "10.1.0.0/16"
  tags = {
    Name = "batuhan-vpc-two"
  }
}

resource "aws_vpc" "vpc_three" {
  cidr_block = "10.2.0.0/16"
  tags = {
    Name = "batuhan-vpc-three"
  }
}
