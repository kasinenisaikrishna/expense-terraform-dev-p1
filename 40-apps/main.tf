module "mysql" {
  source = "terraform-aws-modules/ec2-instance/aws"

  ami  = data.aws_ami.joindevops.id
  name = "${local.resource_name}-mysql"

  instance_type          = "t3.micro"
  vpc_security_group_ids = [local.mysql_sg_id]
  subnet_id              = local.database_subnet_id

  tags = merge(
    var.common_tags,
    var.mysql_tags,
    {
      Name = local.resource_name
    }
  )
}