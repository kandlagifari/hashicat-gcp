module "network" {
  source  = "app.terraform.io/kandla-gifari-msi/network/google"
  version = "3.4.0"
  
  # insert required variables here
  network_name = "kandla-subnet"
  project_id = var.project
  subnets = [
    {
        subnet_name   = "kandla-subnet"
        subnet_ip     = "10.100.10.0/24"
        subnet_region = var.region
    }
  ]
}