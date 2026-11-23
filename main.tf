resource "aws_instance" "main" {
  ami = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.sg_ids
  tags =merge(
    var.ec2_tags,
    local.common_tags,
    {
        "${var.project}-${var.environment}-${var.component}" #roboshop-dev.mongodb
    }
  )
}
