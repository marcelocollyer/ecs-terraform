# ecs-terraform
Terraform project to provision infrastructure to run ECS service

## How to prepare it

1. Clone the repository.
2. Navigate to the project directory.
3. Rename file terraform.tfvars.sample to terraform.tfvars and add your personal preferences

## How to execute it
```sh
terraform init
terraform plan
```

## Side notes
On the file provider.tf, I left the s3 piece commented out so it can be easily executed locally<br>
For more realistic experience, uncomment it and configure your s3 bucket so the state file gets shared<br>
I haven't run terraform apply so a few things might needs adjustment.<br>
For the plan, 25 resources should be listed for creation.

## Terraform version
I tested these files using latest terraform version, which is currently 1.9.2.
I strongly suggest using tfenv to manage terraform versions and set it to proper version.