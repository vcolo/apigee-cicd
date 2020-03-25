terraform {
  backend gcs {
    bucket = "fca-apigee-poc-tfstate"
    prefix = "env/dev"
  }
}
