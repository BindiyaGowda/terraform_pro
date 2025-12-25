variable "instance_type" {
  description = "The AWS EC2 instance type"
  type        = string
  default     = "t3.micro"
  validation {
    condition     = contains(["t3.micro", "t3.large"], var.instance_type)
    error_message = "Instance type must be t2.micro or t3.large."
  }
}
