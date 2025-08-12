resource "azurerm_resource_group" "example" {
  name     = "example"
  location = "centralus"
}

resource "azurerm_resource_group" "deep" {
  name     = "deep"
  location = "centralindia"
}