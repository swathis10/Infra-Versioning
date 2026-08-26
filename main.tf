# Create S3 bucket
resource "aws_s3_bucket" "demo_bucket" {
  bucket = var.bucket_name
  acl    = "private"

  tags = {
    Name        = "DemoS3Bucket"
    Environment = "Dev"
  }
}

# Create EC2 instance
resource "aws_instance" "demo_ec2" {
  ami = "ami-006f82a1d5a27da54"
  instance_type = var.ec2_instance_type
  key_name      = "kubernetes"
  security_groups = ["default1"]

  tags = {
    Name        = "DemoEC2Instance"
    Environment = "Dev"
  }
}
