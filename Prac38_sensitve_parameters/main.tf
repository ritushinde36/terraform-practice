variable "DB_password" {
  default = "secret_password_123"
  sensitive = true
}

resource "local_file" "name" {
  content = var.DB_password
  filename = "${path.module}/password_file.bar"
}

output "pass1" {
    value = var.DB_password
    sensitive = true
}

output "pass2" {
    value = local_file.name.content
    sensitive = true
}