resource "aws_instance" "production" {
  tags = {
    Name                                = var.aws_instance_production__tc_tags_name
    "elasticbeanstalk:environment-id"   = var.aws_instance_production__tc_tags_elasticbeanstalk_environment_id
    "elasticbeanstalk:environment-name" = var.aws_instance_production__tc_tags_elasticbeanstalk_environment_name
  }

  tags_all = {
    Name                                = var.aws_instance_production__tc_tags_all_name
    "elasticbeanstalk:environment-id"   = var.aws_instance_production__tc_tags_all_elasticbeanstalk_environment_id
    "elasticbeanstalk:environment-name" = var.aws_instance_production__tc_tags_all_elasticbeanstalk_environment_name
  }

  ami                         = var.aws_instance_production_ami
  associate_public_ip_address = var.aws_instance_production_associate_public_ip_address
  availability_zone           = var.aws_instance_production_availability_zone
  capacity_reservation_specification {
    capacity_reservation_preference = var.aws_instance_production_capacity_reservation_specification_capacity_reservation_preference
  }

  cpu_core_count       = var.aws_instance_production_cpu_core_count
  cpu_threads_per_core = var.aws_instance_production_cpu_threads_per_core
  credit_specification {
    cpu_credits = var.aws_instance_production_credit_specification_cpu_credits
  }

  iam_instance_profile                 = var.aws_instance_production_iam_instance_profile
  instance_initiated_shutdown_behavior = var.aws_instance_production_instance_initiated_shutdown_behavior
  instance_type                        = var.aws_instance_production_instance_type
  key_name                             = var.aws_instance_production_key_name
  metadata_options {
    http_endpoint               = var.aws_instance_production_metadata_options_http_endpoint
    http_put_response_hop_limit = var.aws_instance_production_metadata_options_http_put_response_hop_limit
    http_tokens                 = var.aws_instance_production_metadata_options_http_tokens
    instance_metadata_tags      = var.aws_instance_production_metadata_options_instance_metadata_tags
  }

  private_ip = var.aws_instance_production_private_ip
  root_block_device {
    delete_on_termination = var.aws_instance_production_root_block_device_delete_on_termination
    iops                  = var.aws_instance_production_root_block_device_iops
    volume_size           = var.aws_instance_production_root_block_device_volume_size
    volume_type           = var.aws_instance_production_root_block_device_volume_type
  }

  security_groups        = var.aws_instance_production_security_groups
  source_dest_check      = var.aws_instance_production_source_dest_check
  subnet_id              = var.aws_instance_production_subnet_id
  tenancy                = var.aws_instance_production_tenancy
  user_data              = var.aws_instance_production_user_data
  vpc_security_group_ids = var.aws_instance_production_vpc_security_group_ids
}

resource "aws_key_pair" "ecs_key" {
  key_name   = var.aws_key_pair_ecs_key_key_name
  public_key = var.aws_key_pair_ecs_key_public_key
}

resource "aws_key_pair" "wtp" {
  key_name   = var.aws_key_pair_wtp_key_name
  public_key = var.aws_key_pair_wtp_public_key
}

