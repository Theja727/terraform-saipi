data "aws_vpc" "test" {
  id = "vpc-076321bdd35075c90"
}

resource "aws_internet_gateway" "DS-IGW" {
  vpc_id = data.aws_vpc.test.id

  tags = {
    Name = "DS-IGW"
  }
}