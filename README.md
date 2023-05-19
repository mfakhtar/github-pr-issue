# terraform-random-pet module
Example Terraform Module to demonstrate TFC/TFE module publishing workflow into the [Private Module Registry](https://www.terraform.io/docs/cloud/registry/index.html).


![Giphy](https://media.giphy.com/media/RbDKaczqWovIugyJmW/giphy.gif)


The module itself uses [`random_pet`](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/pet), [`random_string`](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) and [`local_file`](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) resources. This example module demonstrate a simple collection of terraform resources that are grouped into a module. Publishing this module to the [Private Module Registry](https://www.terraform.io/docs/cloud/registry/index.html)

This module also demonstrate how [`templatefile()`](https://www.terraform.io/docs/language/functions/templatefile.html) function can be used for templating (eg index.html) which is useful passing in config/user data text files to infrastructure resources when required.

The local `index.html` file created can be viewed locally and has a simple static site that cycles through images with the use of javascript. **Note: The statis site has nothing to do with 

## Usage
```hcl
module "pet" {
  source  = "tfcarl.is.hashicorpdemo.com/hashicorp/pet/random"
  version = "x.x.x"
  string_length = 5
}

output "random_string_output" {
  value = module.pet.random_string_output
}

output "random_pet_nickname" {
    value = module.pet.random_pet_nickname
}
```

##


<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.0 |
| <a name="requirement_local"></a> [local](#requirement\_local) | >= 2.0.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | >= 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_local"></a> [local](#provider\_local) | >= 2.0.0 |
| <a name="provider_random"></a> [random](#provider\_random) | >= 3.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [local_file.html](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |
| [random_pet.nickname](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/pet) | resource |
| [random_string.random](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_string_length"></a> [string\_length](#input\_string\_length) | The character length of the string. | `number` | `10` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_random_pet_nickname"></a> [random\_pet\_nickname](#output\_random\_pet\_nickname) | Random Pet Nickname generated |
| <a name="output_random_string_output"></a> [random\_string\_output](#output\_random\_string\_output) | Random String generated |
<!-- END_TF_DOCS -->



## Future Work

- Make index.html show pets instead of hashicorp coffee cups.
- Utilise a random number to be injected into javascript inside index.html
