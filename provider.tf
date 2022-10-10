terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.26.0"
    }
  }
}

provider "azurerm" {

  subscription_id = "2567c0bd-af68-4a95-b427-4bcb7b5148af"
  tenant_id       = "687f51c3-0c5d-4905-84f8-97c683a5b9d1"
  client_id       = "1a7ac789-ffa8-4e1b-bbde-898f07604ec0"
  client_secret   = "ZG88Q~u1HX1Y5Wk95Xv5-NY2DzwyD0YYhWOC7bqX"
  features {

  }
}