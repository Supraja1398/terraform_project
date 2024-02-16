provider "aws" {
  region = "us-east-1" # Change this to your desired region
}

resource "aws_instance" "example" {
  ami           = "ami-0c7217cdde317cfec" # AMI ID for your desired OS
  instance_type = "t2.micro"               # Instance type
  key_name      = "project1"     # Name of your existing key pair

  tags = {
    Name = "Terraproject"
  }
}
resource "aws_s3_bucket" "example_bucket" {
  bucket = "suppi" # Specify a globally unique name for your bucket

  tags = {
    Name = "suppi"
  }
}