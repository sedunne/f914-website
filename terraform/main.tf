## Terraform config to deploy app to DigitalOcean's app platform

terraform {
  cloud {
    organization = "f914"
    workspaces {
      name = "f914-website"
    }
  }

  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {
  token = var.do_token
}

resource "digitalocean_app" "f914-website" {
  spec {
    name   = "f914-website"
    region = "nyc"
    domain {
      name = "f914.net"
      zone = "f914.net"
      type = "PRIMARY"
    }
    alert {
      rule = "DEPLOYMENT_FAILED"
    }
    alert {
      rule = "DOMAIN_FAILED"
    }
    static_site {
      name             = "static-site"
      source_dir       = "/src"
      environment_slug = "html"
      github {
        branch         = "main"
        deploy_on_push = true
        repo           = "sedunne/f914-website"
      }
      routes {
        path = "/"
      }
    }
  }
}
