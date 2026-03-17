terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}
provider "docker" {}

module "nginx_1" {
  source         = "../modules/nginx_container"
  container_name = "nginx_8081"
  container_port = 8081
  image_name     = "nginx:latest"
}

module "nginx_2" {
  source         = "../modules/nginx_container"
  container_name = "nginx_8082"
  container_port = 8082
  image_name     = "nginx:latest"
}
