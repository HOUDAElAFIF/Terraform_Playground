terraform{
#configure remote backend 
 cloud {
      organization = "houda-techy"
      workspaces {
        name = "terraform-path"
      }
  }

#coonfigure providers 

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.15.0"
    }
    random = {
      source = "hashicorp/random"
    }
  }

#terraform version 

}