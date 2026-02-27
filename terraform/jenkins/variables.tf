variable "region" {
  default = "eu-west-2"
}

variable "instance_type" {
  default = "t3.medium"
}

variable "key_name" {
  description = "EC2 Key Pair name"
  default     = "jenkins-key"
}

variable "jenkins_port" {
  default = 8080
}