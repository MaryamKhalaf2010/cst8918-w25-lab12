config {
  terraform_version = "1.6.6"
  plugin_dir = ".tflint.d/plugins"
}

plugin "azurerm" {
  enabled = true
  version = "0.21.0"
  source  = "github.com/terraform-linters/tflint-ruleset-azurerm"
}
