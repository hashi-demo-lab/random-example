## Place all your terraform resources here
#  Locals at the top (if you are using them)
#  Data blocks next to resources that are referencing them
#  Reduce hard coded inputs where possible. They are used below for simplicity to show structure

resource "random_pet" "server" {
  keepers = {
    # Generate a new pet name each time we switch to a new AMI id
    random_name = var.random_id
  }
}

output "pet_name" {
  value = random_pet.server.id
  
}