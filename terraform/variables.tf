variable "ami_id" {
  description = "AMI ID for EC2 instance"
  default     = "ami-0e21465cede02fd1e"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "key_name" {
  description = "Existing AWS Key Pair name"
  default     = "key"
}
