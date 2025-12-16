terraform {
  backend "s3" {
    bucket         = "terraform-prod-state-bucket"
    key            = "infra/terraform.tfstate"
    region         = "us-east-1"   # 👈 MUST MATCH BUCKET REGION
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}
