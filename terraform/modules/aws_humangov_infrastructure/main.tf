resource "aws_instance" "state_ec2" {
  ami           = "ami-04a81a99f5ec58529"
  instance_type = "t3.micro"
  tags = {
    Name = "humangov-${var.state_name}"
  }
}

resource "aws_s3_bucket" "state_s3" {
  bucket = "humangov-${var.state_name}-s3-fa102"
  force_destroy = true
  tags = {
    Name = "humangov-${var.state_name}-s3"
  }
}

resource "aws_dynamodb_table" "state_dynamodb" {
  name         = "humangov-${var.state_name}-dynamodb"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "id"
  attribute {
    name = "id"
    type = "S"
  }
}
