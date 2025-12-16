terraform {
  backend "s3" {
    bucket         = "terraform-prod-state-bucket-682919447108"  # ← Correct bucket name
    key            = "infra/terraform.tfstate"
    region         = "us-east-1"  
    encrypt        = true
    #dynamodb_table = "terraform-lock"  # Optional: for state locking
  }
}
