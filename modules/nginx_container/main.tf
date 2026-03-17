terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}
resource "docker_image" "this" {
  name         = var.image_name
  keep_locally = true
}
resource "docker_container" "this" {
  image = docker_image.this.image_id
  name  = var.container_name
  ports {
    internal = 80
    external = var.container_port
  }
}
