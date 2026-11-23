terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.4"
    }
  }
}

resource "local_file" "infra_config" {
  content  = "Environment: Production-v2 | Deployed via GitOps PR Merge!"
  filename = "${path.module}/deployed_infra.txt"
}
