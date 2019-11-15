# Create a VPC
resource "aws_vpc" basic {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "${var.environment}-basic"
  }
}
