terraform {
  backend "gcs" {
    bucket = "apigee-cicd-956385-tfstate"
    prefix = "env/prod"
  }
}
