# Isaac Foote - *Initial work* 

/*
Initialize Terraform
*/

terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.22.0"
    }
  }
}

#Set Provider as docker and name resource
provider "docker" {}

resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = true       // keep image after "destroy"
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = "tutorial"
  ports {
    internal = 80  //Set internal port 
    external = 2224  //Set external port
  }
}

