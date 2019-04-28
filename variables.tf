variable "aws_region" {
   default = "us-east-1"
   description = "aws region"
}

variable "aws_access_key" {
    default = "AKIARS73AHPG5IRSGKOD"
    description = "Access key"
}

variable "aws_secret_key" {
    default = "+iSp3612TvFqXGvIK634aYxgq1hin2ni/q7waY3C"
    description = "Secret Key"
}


variable "name" {
  description = "(Required) Name of the repository"
  type        = "string"
  default     =  jenkins-jags
}

variable "create" {
  description = "(Optional) Whether to create this resource or not"
  default     = true
}

variable "repository" {
  description = "(Required) Name of the repository to apply the policy"
  type        = "string"
  default     =  jenkins-jags
}

variable "policy" {
  description = "(Optional) A valid bucket policy JSON document"
  type        = "string"
  default     = <<EOF
{
  "Version": "2008-10-17",
  "Statement": [
    {
      "Sid": "AllActionsAllow",
      "Effect": "Allow",
      "Principal": {
        "AWS": "*"
      },
      "Action": [
        "ecr:GetDownloadUrlForLayer",
        "ecr:BatchGetImage",
        "ecr:BatchCheckLayerAvailability",
        "ecr:PutImage",
        "ecr:InitiateLayerUpload",
        "ecr:UploadLayerPart",
        "ecr:CompleteLayerUpload"
      ]
    }
  ]
}
EOF
}
