# data source to retrieve windows AMI
data "aws_ami" "windows-ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["Windows_Server-2019-English-Full-Base-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}

#To get Windows admin password for instance
#> aws ec2 get-password-data --instance-id i-046f0926c7c316b8b --priv-launch-key mykey


