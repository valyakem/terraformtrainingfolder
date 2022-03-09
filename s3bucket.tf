resource "aws_s3_bucket" "nbtests3" {
  bucket = "nbtests3"

  tags = {
    Name        = "My bucket"
  }
}