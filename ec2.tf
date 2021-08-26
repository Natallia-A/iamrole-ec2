
provider "aws" {
  region = "eu-west-2"  

}resource "aws_instance" "web" {
  ami           = "ami-0d26eb3972b7f8c96"
  instance_type = "t2.micro"
iam_instance_profile = "${aws_iam_instance_profile.ec2_profile.name}"

  tags = {
    Name = "HelloWorld"
  }
