locals {
  tags = {
    "ManagedBy" = "terraform::vpc-extended"
  }
}

module "prefix" {
  source     = "git::https://github.com/cloudposse/terraform-null-label.git?ref=0.16.0"
  namespace  = var.namespace
  stage      = var.stage
  delimiter  = "-"

  tags = {
    "Project" = var.namespace,
  }
}
