
provider "aws" {
  region = "eu-central-1"
}

module "windows_server_2022" {
  source         = "../../modules/windows-server"
  instance_count = 2
  ami_id         = "ami-0abcdef1234567890" # Replace with actual Win2022 Core AMI
  instance_type  = "t3.large"
  subnet_id      = "subnet-0123456789abcdef0"
  key_name       = "your-keypair"
  name_prefix    = "win2022-dev"
  environment    = "dev"
  volume_size    = 60

  tags = {
    Owner      = "Donovan"
    Project    = "VMInfra"
    Department = "IT"
  }
}
