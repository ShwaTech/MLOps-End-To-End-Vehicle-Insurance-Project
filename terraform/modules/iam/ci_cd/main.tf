
resource "aws_iam_user" "this" {
  name = var.user_name
  force_destroy = true
}

# Attach policies (can add/remove as needed)
resource "aws_iam_user_policy_attachment" "ec2_access" {
  user       = aws_iam_user.this.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}

resource "aws_iam_user_policy_attachment" "ecs_access" {
  user       = aws_iam_user.this.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonECS_FullAccess"
}

resource "aws_iam_user_policy_attachment" "ecr_access" {
  user       = aws_iam_user.this.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryFullAccess"
}

# Access Key
resource "aws_iam_access_key" "this" {
  user = aws_iam_user.this.name
}
