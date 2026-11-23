#optinal so anyone can overide
variable "instance_type" {
  type = string
}

variable "ami" {
  description = "The EC2 ami declaration."
  type        = string
  default     = "ami-0055977a6e828a4f4"
}

variable "environment" {
  type= string
}

variable "project" {
  type = string
}

variable "sg_ids" {
  type = list
}

variable "ec2_tags" {
  type = map
  default = {}
  
}

variable "component" {
     
}