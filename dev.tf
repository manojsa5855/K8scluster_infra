terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.52.0"
    }
  }
}

module "module_dev" {
  source = "./modules"
  location = "West US 3"
  resource_group_name = "Dev-RG"
  size = "Standard_DS2_v2"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCuXAgMZATT9kXeH+t1oRHMJJ//KZcfmCdyDKUqUp7kk7pIutKuinhz7YJBF8XX1UiIwa89Vq30ZamEbjGiFVdLtDhWIJv4GmQGru2Ph9Kah3ON/HGszJR+YZJ8WSotN9o7DIJ5VbLwaR7s3xBpkPj1kzcUa/ZQhUaZ5Cy9aIGFNisp5hicCgLyovL/QzBEj6qexdmZxJLEddZNSj4ibyPkwy2V4BfFHvfnHh4eTbBhoSoHISX6BlUFPsxINZtJUjnxe1BF7/C84uBtri9ilf7UelsRObHUidPHabE6TWatv33KrpzNmYe0Rfv6mUKKHjXYWihdUij750P4cA4+dEUc51KYhAIsefo0FAYbJ0gG3K5OSieyn2QrqSGqoRCrWrUJEyJF6i3K23u0CEy0Vnvza6uUD/+gsMvsnw+Gn1GWeGiEc7kRhmFDzGJzCrY0FIZ6egXG/+jXN0Bm3jMu/aU6OaE8cAAKGCArUPFX2HE4gQThv2ejMYPBkKZuhDeo340= azureuser@jenkins"

}
