resource "aws_vpc" "stage" {
  cidr_block = "10.0.0.0/18"
}
resource "aws_subnet" "public-1a" {
    vpc_id = "${aws_vpc.stage.id}"
    availability_zone = "us-east-1a"
    cidr_block = "10.0.0.0/24"
}
resource "aws_subnet" "public-1b" {
    vpc_id = "${aws_vpc.stage.id}"
    availability_zone = "us-east-1b"
    cidr_block = "10.0.1.0/24"
}
resource "aws_subnet" "public-1c" {
    vpc_id = "${aws_vpc.stage.id}"
    availability_zone = "us-east-1c"
    cidr_block = "10.0.2.0/24"
}
