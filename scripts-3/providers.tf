# Initialises Terraform providers and sets their version numbers.

provider "azurerm" {
  version = "3.49.0"

  features {}
}

provider "tls" {
  version = "4.0.4"
}
