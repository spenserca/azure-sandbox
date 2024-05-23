# azure-sandbox

A repo for building/testing different Azure products/architectures

## Resource Group Locking

This project is a PoC to test out how a read-only resource lock affects a resource group. Can the resources inside a read-only
resource group be modified?

Running these scripts under my account which has Owner-level access, I shouldn't be able to add / modify any resources within
the locked resource group.

## Resources

- [azurerm terraform provider](https://registry.terraform.io/providers/hashicorp/azurerm/latest)
- [azure naming abbreviations](https://learn.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-best-practices/resource-abbreviations)
