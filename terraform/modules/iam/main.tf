
resource "aws_iam_user" "this" {
  name          = var.user_name
  force_destroy = true
}

resource "aws_iam_user_policy_attachment" "admin_attach" {
  user       = aws_iam_user.this.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

resource "aws_iam_access_key" "this" {
  user = aws_iam_user.this.name
}
