resource "local_file" "my_pet" {
filename = "pavi.txt"
content = "my name is ${random_pet.petname.id}"    
}
resource "random_pet" "petname" {
  prefix = var.prefix
  separator = "."
  length ="1"
}
output "pet_name" {
  value = random_pet.petname.id
}