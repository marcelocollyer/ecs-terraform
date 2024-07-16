resource "aws_ecr_repository" "ecs-repo" {
  name = var.repository_name
}