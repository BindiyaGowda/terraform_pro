resource "aws_s3_bucket" "my-tf-s3" {
  bucket = var.bucket_name

  tags = {
    Name        = "abdiny-tf"
    Environment = "Dev"
  }
}

resource "aws_s3_object" "buk-object" {
  bucket = var.bucket_name
  key    = "main.tf"
  source = "C:/Users/USER/Desktop/terraform-project/module/main.tf"
  etag = filemd5("C:/Users/USER/Desktop/terraform-project/module/main.tf")
}