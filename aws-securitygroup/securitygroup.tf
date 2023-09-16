# Security group
resource "aws_security_group" "sg" {
  name        = var.name
  description = var.description
  vpc_id      = var.vpc_id

  lifecycle {
    # if changing 'name_prefix' properties.
    create_before_destroy = true
  }

  tags = merge({ "Name" = var.name }, var.tags)
}

# Security group rules
resource "aws_security_group_rule" "rules" {
  for_each                 = var.sg_rules
  description              = each.value.description
  type                     = each.value.type
  from_port                = each.value.from_port
  to_port                  = each.value.to_port
  protocol                 = each.value.protocol
  cidr_blocks              = each.value.cidr_blocks
  source_security_group_id = each.value.source_security_group_id
  self                     = each.value.self
  prefix_list_ids          = each.value.prefix_list_ids
  security_group_id        = aws_security_group.sg.id
}
