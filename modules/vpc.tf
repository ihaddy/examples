resource "aws_internet_gateway" "igw_ca60cdb0" {
  vpc_id = var.aws_internet_gateway_igw_ca60cdb0_vpc_id
}

resource "aws_route_table" "rtb_af7cb9de" {
  route {
    cidr_block = var.aws_route_table_rtb_af7cb9de_route_cidr_block
    gateway_id = var.aws_route_table_rtb_af7cb9de_route_gateway_id
  }

  vpc_id = var.aws_route_table_rtb_af7cb9de_vpc_id
}

resource "aws_security_group" "AtEMK" {
  tags = {
    Name                                = var.aws_security_group_atemk__tc_tags_name
    "elasticbeanstalk:environment-id"   = var.aws_security_group_atemk__tc_tags_elasticbeanstalk_environment_id
    "elasticbeanstalk:environment-name" = var.aws_security_group_atemk__tc_tags_elasticbeanstalk_environment_name
  }

  tags_all = {
    Name                                = var.aws_security_group_atemk__tc_tags_all_name
    "elasticbeanstalk:environment-id"   = var.aws_security_group_atemk__tc_tags_all_elasticbeanstalk_environment_id
    "elasticbeanstalk:environment-name" = var.aws_security_group_atemk__tc_tags_all_elasticbeanstalk_environment_name
  }

  description = var.aws_security_group_atemk_description
  egress {
    cidr_blocks = var.aws_security_group_atemk_egress_cidr_blocks
    from_port   = var.aws_security_group_atemk_egress_from_port
    protocol    = var.aws_security_group_atemk_egress_protocol
    to_port     = var.aws_security_group_atemk_egress_to_port
  }

  ingress {
    cidr_blocks = var.aws_security_group_atemk_ingress_cidr_blocks
    from_port   = var.aws_security_group_atemk_ingress_from_port
    protocol    = var.aws_security_group_atemk_ingress_protocol
    to_port     = var.aws_security_group_atemk_ingress_to_port
  }

  ingress {
    cidr_blocks = var.aws_security_group_atemk_ingress_cidr_blocks
    from_port   = var.aws_security_group_atemk_ingress_from_port
    protocol    = var.aws_security_group_atemk_ingress_protocol
    to_port     = var.aws_security_group_atemk_ingress_to_port
  }

  name   = var.aws_security_group_atemk_name
  vpc_id = var.aws_security_group_atemk_vpc_id
}

resource "aws_security_group" "production" {
  tags = {
    Name                                = var.aws_security_group_production__tc_tags_name
    "elasticbeanstalk:environment-id"   = var.aws_security_group_production__tc_tags_elasticbeanstalk_environment_id
    "elasticbeanstalk:environment-name" = var.aws_security_group_production__tc_tags_elasticbeanstalk_environment_name
  }

  tags_all = {
    Name                                = var.aws_security_group_production__tc_tags_all_name
    "elasticbeanstalk:environment-id"   = var.aws_security_group_production__tc_tags_all_elasticbeanstalk_environment_id
    "elasticbeanstalk:environment-name" = var.aws_security_group_production__tc_tags_all_elasticbeanstalk_environment_name
  }

  description = var.aws_security_group_production_description
  egress {
    cidr_blocks = var.aws_security_group_production_egress_cidr_blocks
    from_port   = var.aws_security_group_production_egress_from_port
    protocol    = var.aws_security_group_production_egress_protocol
    to_port     = var.aws_security_group_production_egress_to_port
  }

  ingress {
    cidr_blocks = var.aws_security_group_production_ingress_cidr_blocks
    from_port   = var.aws_security_group_production_ingress_from_port
    protocol    = var.aws_security_group_production_ingress_protocol
    to_port     = var.aws_security_group_production_ingress_to_port
  }

  ingress {
    from_port       = var.aws_security_group_production_ingress_from_port
    protocol        = var.aws_security_group_production_ingress_protocol
    security_groups = var.aws_security_group_production_ingress_security_groups
    to_port         = var.aws_security_group_production_ingress_to_port
  }

  name   = var.aws_security_group_production_name
  vpc_id = var.aws_security_group_production_vpc_id
}

resource "aws_security_group" "sg_7bfe146a" {
  description = var.aws_security_group_sg_7bfe146a_description
  egress {
    cidr_blocks = var.aws_security_group_sg_7bfe146a_egress_cidr_blocks
    from_port   = var.aws_security_group_sg_7bfe146a_egress_from_port
    protocol    = var.aws_security_group_sg_7bfe146a_egress_protocol
    to_port     = var.aws_security_group_sg_7bfe146a_egress_to_port
  }

  ingress {
    from_port = var.aws_security_group_sg_7bfe146a_ingress_from_port
    protocol  = var.aws_security_group_sg_7bfe146a_ingress_protocol
    self      = var.aws_security_group_sg_7bfe146a_ingress_self
    to_port   = var.aws_security_group_sg_7bfe146a_ingress_to_port
  }

  name   = var.aws_security_group_sg_7bfe146a_name
  vpc_id = var.aws_security_group_sg_7bfe146a_vpc_id
}

resource "aws_subnet" "subnet_27e3cb06" {
  availability_zone_id                = var.aws_subnet_subnet_27e3cb06_availability_zone_id
  cidr_block                          = var.aws_subnet_subnet_27e3cb06_cidr_block
  map_public_ip_on_launch             = var.aws_subnet_subnet_27e3cb06_map_public_ip_on_launch
  private_dns_hostname_type_on_launch = var.aws_subnet_subnet_27e3cb06_private_dns_hostname_type_on_launch
  vpc_id                              = var.aws_subnet_subnet_27e3cb06_vpc_id
}

resource "aws_subnet" "subnet_310c7d00" {
  availability_zone                   = var.aws_subnet_subnet_310c7d00_availability_zone
  cidr_block                          = var.aws_subnet_subnet_310c7d00_cidr_block
  map_public_ip_on_launch             = var.aws_subnet_subnet_310c7d00_map_public_ip_on_launch
  private_dns_hostname_type_on_launch = var.aws_subnet_subnet_310c7d00_private_dns_hostname_type_on_launch
  vpc_id                              = var.aws_subnet_subnet_310c7d00_vpc_id
}

resource "aws_subnet" "subnet_3c867b70" {
  availability_zone_id                = var.aws_subnet_subnet_3c867b70_availability_zone_id
  cidr_block                          = var.aws_subnet_subnet_3c867b70_cidr_block
  map_public_ip_on_launch             = var.aws_subnet_subnet_3c867b70_map_public_ip_on_launch
  private_dns_hostname_type_on_launch = var.aws_subnet_subnet_3c867b70_private_dns_hostname_type_on_launch
  vpc_id                              = var.aws_subnet_subnet_3c867b70_vpc_id
}

resource "aws_subnet" "subnet_cd6548ab" {
  availability_zone                   = var.aws_subnet_subnet_cd6548ab_availability_zone
  cidr_block                          = var.aws_subnet_subnet_cd6548ab_cidr_block
  map_public_ip_on_launch             = var.aws_subnet_subnet_cd6548ab_map_public_ip_on_launch
  private_dns_hostname_type_on_launch = var.aws_subnet_subnet_cd6548ab_private_dns_hostname_type_on_launch
  vpc_id                              = var.aws_subnet_subnet_cd6548ab_vpc_id
}

resource "aws_subnet" "subnet_d28166d3" {
  availability_zone                   = var.aws_subnet_subnet_d28166d3_availability_zone
  cidr_block                          = var.aws_subnet_subnet_d28166d3_cidr_block
  map_public_ip_on_launch             = var.aws_subnet_subnet_d28166d3_map_public_ip_on_launch
  private_dns_hostname_type_on_launch = var.aws_subnet_subnet_d28166d3_private_dns_hostname_type_on_launch
  vpc_id                              = var.aws_subnet_subnet_d28166d3_vpc_id
}

resource "aws_subnet" "subnet_e1644abe" {
  availability_zone                   = var.aws_subnet_subnet_e1644abe_availability_zone
  cidr_block                          = var.aws_subnet_subnet_e1644abe_cidr_block
  map_public_ip_on_launch             = var.aws_subnet_subnet_e1644abe_map_public_ip_on_launch
  private_dns_hostname_type_on_launch = var.aws_subnet_subnet_e1644abe_private_dns_hostname_type_on_launch
  vpc_id                              = var.aws_subnet_subnet_e1644abe_vpc_id
}

resource "aws_vpc" "vpc_a3a6d8de" {
  cidr_block           = var.aws_vpc_vpc_a3a6d8de_cidr_block
  enable_dns_hostnames = var.aws_vpc_vpc_a3a6d8de_enable_dns_hostnames
  enable_dns_support   = var.aws_vpc_vpc_a3a6d8de_enable_dns_support
  instance_tenancy     = var.aws_vpc_vpc_a3a6d8de_instance_tenancy
}

