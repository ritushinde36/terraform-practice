provider "vault" {
  address = "<this is the vault address>"
}

data "vault_generic_secret" "demo "{
    path = "secret/<secret_name>"
}

output "secret_info" {
    value = data.vault_generic_secret.demo.data_json
    sensitive = true
  
}