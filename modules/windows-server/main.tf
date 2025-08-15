resource "aws_instance" "windows_server" {
  count         = var.instance_count
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  key_name      = var.key_name

  tags = merge(
    var.tags,
    {
      "Name"        = "${var.name_prefix}-${count.index}"
      "Environment" = var.environment
      "OS"          = "WindowsServer2022Core"
    }
  )

  # Optional: Add user_data for bootstrapping
  user_data = var.user_data

  # Optional: EBS volume config
  root_block_device {
    volume_size = var.volume_size
    volume_type = "gp3"
  }
}
