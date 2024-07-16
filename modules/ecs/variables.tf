variable "cluster_name" {
  description = "Name of the ECS cluster"
  type        = string
}

variable "service_name" {
  description = "Name of the ECS service"
  type        = string
}

variable "task_definition_family" {
  description = "Family name of the ECS task definition"
  type        = string
}

variable "container_image" {
  description = "Docker image for the ECS container"
  type        = string
}

variable "container_port" {
  description = "Port for the ECS container"
  type        = number
}

variable "private_subnet_ids" {
  description = "List of private subnet IDs"
  type        = list(string)
}

variable "log_group_name" {
  description = "Log group name for CloudWatch"
  type        = string
}

variable "region" {
  description = "AWS Region"
  default     = "us-east-1"
  type        = string
}