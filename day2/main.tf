variable "filename" { type = string }
variable "message" { type = string }
resource "local_file" "env_file" {
  content  = var.message
  filename = "${path.module}/${var.filename}"
}
