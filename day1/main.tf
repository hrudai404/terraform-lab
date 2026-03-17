terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

variable "message" {
  type    = string
  default = "Hello from Terraform"
}

resource "local_file" "hello" {
  content  = var.message
  filename = "${path.module}/hello.txt"
}

output "file_path" {
  value = local_file.hello.filename
}
