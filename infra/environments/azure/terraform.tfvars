project  = "migrated-app"
env      = "dev"
location = "westeurope"

vnet_cidr = "10.20.0.0/16"
public_subnet_cidr  = "10.20.1.0/24"
private_subnet_cidr = "10.20.11.0/24"

vm_sku         = "Standard_B2s"
instance_count = 2

admin_username = "azureuser"
admin_ssh_public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDC47nUE9bddS94RZ3s/B2L9QAp5JZ6fCryp1/KV5J3rEUkkWYTxy4cvgIqfTOuZ49Z8hm+lq+79Zx7HPEb/khdBVduUD73BL47bKGoJekORby1iOnheRNOeqtfeI+UtECfxemzZPS4ooIkttlUBrRbm1BqJ7NmVl5esiBNO4itdgxpjysL+JDTEqh8AWP16l7HhxrAXEsMGXvHIWLIPocjXQNlzsJg7rHrp6NWGqsgGsMtOLZQtw61BeRAapVCkr4tcuyukt2GqWxihT3BkKSszxS91mXiXirEJvz9RhwGxtdyY3zfg9KhcMnBywkYv0yBHl8TIwPYQtyq4hwPOxb3ga5zCvSOImBcgIWkwNIiQTyhnUXfeiQf3+oji0tFjMoh6KK4r8jsZFIkomimIklj6etBwZ0cmMC/pzuhHsK/VdOxCKhbepcujCVrdn48tOMHtsjEO/ZO4drZvaGD9N1HhXGq6/PSSKy4tuva0FIjVzhZteXNsocKNoGnF4tJi+0= generated-by-azure" # SSH public key content
