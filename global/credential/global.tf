output "access_key" {
    value = "Xxxxxxxxxxxxx"
}
output "secret_key" {
    value = "${data.vault_generic_secret.secret_key.data["secret_key"]}"
}