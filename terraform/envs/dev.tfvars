
iam_user_name = "dev-shwa-mlops-vehicle"


s3_bucket_name      = "dev-shwa-vehicle-insurance-model"
block_public_acls   = true
block_public_policy = true


iam_user_name_ci_cd = "shwa-ci-cd-user"
ecr_repo_name       = "dev-shwa-vehicle-ecr"
ec2_instance_name   = "dev-shwa-vehicle-machine"
ec2_ami             = "ami-0360c520857e3138f"    # Ubuntu 24.04 LTS (us-east-1)
ec2_instance_type   = "t2.micro"
ec2_key_name        = "shwa-vehicle"
ec2_disk_size       = 30

