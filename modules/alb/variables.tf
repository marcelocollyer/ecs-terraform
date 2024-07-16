variable "public_subnet_id" {
  description = "ID of the public subnet"
  type        = string
}

variable "target_group_vpc_id" {
  description = "VPC ID for the target group"
  type        = string
}

variable "container_port" {
  description = "Port for the ECS container"
  type        = number
}

variable "certificate_arn" {
  description = "ARN of the SSL certificate for HTTPS"
  type        = string
}
