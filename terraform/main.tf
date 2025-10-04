
module "iam_user" {
  source    = "./modules/iam"
  user_name = var.iam_user_name
}

