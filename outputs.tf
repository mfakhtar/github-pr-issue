output "random_string_output" {
  description = "Random String generated"
  value       = random_string.random.id
}

output "random_pet_nickname" {
  description = "Random Pet Nickname generated"
  value       = random_pet.nickname.id
}


