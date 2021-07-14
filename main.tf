resource "aws_instance" "ec2_instance" {
  count                       = var.replicas_count
  ami                         = var.ami
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  security_groups             = var.security_groups_ids
  associate_public_ip_address = var.use_public_ip
  key_name                    = var.key_name
  user_data                   = var.user_data
  root_block_device {
      volume_size = var.root_volume_size
    }

  tags = var.instance_tags

}