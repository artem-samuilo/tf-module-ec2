resource "aws_instance" "bastion_host" {
  count                     = var.count
  ami                       = var.ami
  instance_type             = var.instance_type
  subnet_id                 = var.subnet_id
  security_group_ids    = var.security_groups_ids
  associate_public_ip_address = var.use_public_ip
  key_name = var.key_name
  root_block_device {
      volume_size = var.root_volume_size
    }

  tags = {
    Name = "${var.name}"
  }
}