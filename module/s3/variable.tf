variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
  # A default value makes the variable optional; if not provided, this is used.
  default     = "my-unique-terraform-bucket-biya" 
}