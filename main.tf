provider "aws" {
   # access_key = "${var.aws_access_key}"
   # secret_key = "${var.aws_secret_key}"
    profile = "default"
    region = "${var.aws_region}"
}


######## ECR Resource #########
resource "aws_ecr_repository" "jenkins" {
  name = "${var.name}"
}


resource "aws_ecr_repository_policy" "jenkins" {
  count      = "${var.create ? 1 : 0 }"

  repository = "${var.repository}"
  policy     = "${var.policy}"
}
