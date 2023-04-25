variable "region" {
  type    = string
  default = "us-east-1"
}


variable "instance_ami"{
    type     = string
    default  = "ami-069aabeee6f53e7bf"
}

variable "instance_type" {
  default     = "t2.micro"
  description = "The EC2 instance type"
}

