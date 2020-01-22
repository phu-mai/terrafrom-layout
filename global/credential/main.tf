provider "vault" {
  address ="http://vault-server.domain:8200"
}
data "vault_generic_secret" "secret_key" {
  path = "secret/secret_key"
}