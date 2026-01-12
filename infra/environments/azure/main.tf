locals {
  name = "${var.project}-${var.env}"
  tags = {
    Project = var.project
    Env     = var.env
  }
}

resource "azurerm_resource_group" "rg" {
  name     = "${local.name}-rg"
  location = var.location
  tags     = local.tags
}

module "network" {
  source              = "../../modules/network-azure"
  name                = local.name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name

  vnet_cidr           = var.vnet_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr

  tags = local.tags
}

module "storage" {
  source              = "../../modules/storage-azure"
  name                = local.name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  tags                = local.tags
}

module "compute" {
  source              = "../../modules/compute-azure"
  name                = local.name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name

  public_subnet_id  = module.network.public_subnet_id
  private_subnet_id = module.network.private_subnet_id

  vm_sku            = var.vm_sku
  instance_count    = var.instance_count

  admin_username       = var.admin_username
  admin_ssh_public_key = var.admin_ssh_public_key
  cloud_init           = var.cloud_init

  tags = local.tags
}
