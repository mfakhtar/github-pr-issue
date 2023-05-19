resource "random_string" "random" {
  length = var.string_length
}

resource "random_pet" "nickname" {
  length = var.string_length
}

# Will generate a index.html file which can be viewed by a local browser.
resource "local_file" "html" {
  filename = "./index.html"
  content  = templatefile("${path.module}/templates/index.html.tpl", { nickname = random_pet.nickname.id })
}