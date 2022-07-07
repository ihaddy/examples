resource "aws_alb" "production" {
  tags = {
    Name                                = var.aws_alb_production__tc_tags_name
    "elasticbeanstalk:environment-id"   = var.aws_alb_production__tc_tags_elasticbeanstalk_environment_id
    "elasticbeanstalk:environment-name" = var.aws_alb_production__tc_tags_elasticbeanstalk_environment_name
  }

  tags_all = {
    Name                                = var.aws_alb_production__tc_tags_all_name
    "elasticbeanstalk:environment-id"   = var.aws_alb_production__tc_tags_all_elasticbeanstalk_environment_id
    "elasticbeanstalk:environment-name" = var.aws_alb_production__tc_tags_all_elasticbeanstalk_environment_name
  }

  access_logs {
    bucket = var.aws_alb_production_access_logs_bucket
  }

  desync_mitigation_mode = var.aws_alb_production_desync_mitigation_mode
  enable_http2           = var.aws_alb_production_enable_http2
  idle_timeout           = var.aws_alb_production_idle_timeout
  ip_address_type        = var.aws_alb_production_ip_address_type
  load_balancer_type     = var.aws_alb_production_load_balancer_type
  name                   = var.aws_alb_production_name
  security_groups        = var.aws_alb_production_security_groups
  subnet_mapping {
    subnet_id = var.aws_alb_production_subnet_mapping_subnet_id
  }

  subnet_mapping {
    subnet_id = var.aws_alb_production_subnet_mapping_subnet_id
  }

  subnet_mapping {
    subnet_id = var.aws_alb_production_subnet_mapping_subnet_id
  }

  subnet_mapping {
    subnet_id = var.aws_alb_production_subnet_mapping_subnet_id
  }

  subnet_mapping {
    subnet_id = var.aws_alb_production_subnet_mapping_subnet_id
  }

  subnet_mapping {
    subnet_id = var.aws_alb_production_subnet_mapping_subnet_id
  }

  subnets = var.aws_alb_production_subnets
}

resource "aws_alb_listener" "arn_aws_elasticloadbalancing_us_east_1_863600477985_listener_app_awseb_awseb_124iga1sc4k4i_c1c538f0559a8c27_618eb15549bd7104" {
  default_action {
    redirect {
      host        = var.aws_alb_listener_arn_aws_elasticloadbalancing_us_east_1_863600477985_listener_app_awseb_awseb_124iga1sc4k4i_c1c538f0559a8c27_618eb15549bd7104_default_action_redirect_host
      path        = var.aws_alb_listener_arn_aws_elasticloadbalancing_us_east_1_863600477985_listener_app_awseb_awseb_124iga1sc4k4i_c1c538f0559a8c27_618eb15549bd7104_default_action_redirect_path
      port        = var.aws_alb_listener_arn_aws_elasticloadbalancing_us_east_1_863600477985_listener_app_awseb_awseb_124iga1sc4k4i_c1c538f0559a8c27_618eb15549bd7104_default_action_redirect_port
      protocol    = var.aws_alb_listener_arn_aws_elasticloadbalancing_us_east_1_863600477985_listener_app_awseb_awseb_124iga1sc4k4i_c1c538f0559a8c27_618eb15549bd7104_default_action_redirect_protocol
      query       = var.aws_alb_listener_arn_aws_elasticloadbalancing_us_east_1_863600477985_listener_app_awseb_awseb_124iga1sc4k4i_c1c538f0559a8c27_618eb15549bd7104_default_action_redirect_query
      status_code = var.aws_alb_listener_arn_aws_elasticloadbalancing_us_east_1_863600477985_listener_app_awseb_awseb_124iga1sc4k4i_c1c538f0559a8c27_618eb15549bd7104_default_action_redirect_status_code
    }

    type = var.aws_alb_listener_arn_aws_elasticloadbalancing_us_east_1_863600477985_listener_app_awseb_awseb_124iga1sc4k4i_c1c538f0559a8c27_618eb15549bd7104_default_action_type
  }

  load_balancer_arn = var.aws_alb_listener_arn_aws_elasticloadbalancing_us_east_1_863600477985_listener_app_awseb_awseb_124iga1sc4k4i_c1c538f0559a8c27_618eb15549bd7104_load_balancer_arn
  port              = var.aws_alb_listener_arn_aws_elasticloadbalancing_us_east_1_863600477985_listener_app_awseb_awseb_124iga1sc4k4i_c1c538f0559a8c27_618eb15549bd7104_port
  protocol          = var.aws_alb_listener_arn_aws_elasticloadbalancing_us_east_1_863600477985_listener_app_awseb_awseb_124iga1sc4k4i_c1c538f0559a8c27_618eb15549bd7104_protocol
}

resource "aws_alb_listener" "arn_aws_elasticloadbalancing_us_east_1_863600477985_listener_app_awseb_awseb_124iga1sc4k4i_c1c538f0559a8c27_9a9bf67da4784468" {
  certificate_arn = var.aws_alb_listener_arn_aws_elasticloadbalancing_us_east_1_863600477985_listener_app_awseb_awseb_124iga1sc4k4i_c1c538f0559a8c27_9a9bf67da4784468_certificate_arn
  default_action {
    target_group_arn = var.aws_alb_listener_arn_aws_elasticloadbalancing_us_east_1_863600477985_listener_app_awseb_awseb_124iga1sc4k4i_c1c538f0559a8c27_9a9bf67da4784468_default_action_target_group_arn
    type             = var.aws_alb_listener_arn_aws_elasticloadbalancing_us_east_1_863600477985_listener_app_awseb_awseb_124iga1sc4k4i_c1c538f0559a8c27_9a9bf67da4784468_default_action_type
  }

  load_balancer_arn = var.aws_alb_listener_arn_aws_elasticloadbalancing_us_east_1_863600477985_listener_app_awseb_awseb_124iga1sc4k4i_c1c538f0559a8c27_9a9bf67da4784468_load_balancer_arn
  port              = var.aws_alb_listener_arn_aws_elasticloadbalancing_us_east_1_863600477985_listener_app_awseb_awseb_124iga1sc4k4i_c1c538f0559a8c27_9a9bf67da4784468_port
  protocol          = var.aws_alb_listener_arn_aws_elasticloadbalancing_us_east_1_863600477985_listener_app_awseb_awseb_124iga1sc4k4i_c1c538f0559a8c27_9a9bf67da4784468_protocol
  ssl_policy        = var.aws_alb_listener_arn_aws_elasticloadbalancing_us_east_1_863600477985_listener_app_awseb_awseb_124iga1sc4k4i_c1c538f0559a8c27_9a9bf67da4784468_ssl_policy
}

resource "aws_alb_listener_rule" "arn_aws_elasticloadbalancing_us_east_1_863600477985_listener_rule_app_awseb_awseb_124iga1sc4k4i_c1c538f0559a8c27_618eb15549bd7104_5ceeb425deb7eac2" {
  action {
    redirect {
      host        = var.aws_alb_listener_rule_arn_aws_elasticloadbalancing_us_east_1_863600477985_listener_rule_app_awseb_awseb_124iga1sc4k4i_c1c538f0559a8c27_618eb15549bd7104_5ceeb425deb7eac2_action_redirect_host
      path        = var.aws_alb_listener_rule_arn_aws_elasticloadbalancing_us_east_1_863600477985_listener_rule_app_awseb_awseb_124iga1sc4k4i_c1c538f0559a8c27_618eb15549bd7104_5ceeb425deb7eac2_action_redirect_path
      port        = var.aws_alb_listener_rule_arn_aws_elasticloadbalancing_us_east_1_863600477985_listener_rule_app_awseb_awseb_124iga1sc4k4i_c1c538f0559a8c27_618eb15549bd7104_5ceeb425deb7eac2_action_redirect_port
      protocol    = var.aws_alb_listener_rule_arn_aws_elasticloadbalancing_us_east_1_863600477985_listener_rule_app_awseb_awseb_124iga1sc4k4i_c1c538f0559a8c27_618eb15549bd7104_5ceeb425deb7eac2_action_redirect_protocol
      query       = var.aws_alb_listener_rule_arn_aws_elasticloadbalancing_us_east_1_863600477985_listener_rule_app_awseb_awseb_124iga1sc4k4i_c1c538f0559a8c27_618eb15549bd7104_5ceeb425deb7eac2_action_redirect_query
      status_code = var.aws_alb_listener_rule_arn_aws_elasticloadbalancing_us_east_1_863600477985_listener_rule_app_awseb_awseb_124iga1sc4k4i_c1c538f0559a8c27_618eb15549bd7104_5ceeb425deb7eac2_action_redirect_status_code
    }

    type = var.aws_alb_listener_rule_arn_aws_elasticloadbalancing_us_east_1_863600477985_listener_rule_app_awseb_awseb_124iga1sc4k4i_c1c538f0559a8c27_618eb15549bd7104_5ceeb425deb7eac2_action_type
  }

  condition    = var.aws_alb_listener_rule_arn_aws_elasticloadbalancing_us_east_1_863600477985_listener_rule_app_awseb_awseb_124iga1sc4k4i_c1c538f0559a8c27_618eb15549bd7104_5ceeb425deb7eac2_condition
  listener_arn = var.aws_alb_listener_rule_arn_aws_elasticloadbalancing_us_east_1_863600477985_listener_rule_app_awseb_awseb_124iga1sc4k4i_c1c538f0559a8c27_618eb15549bd7104_5ceeb425deb7eac2_listener_arn
  priority     = var.aws_alb_listener_rule_arn_aws_elasticloadbalancing_us_east_1_863600477985_listener_rule_app_awseb_awseb_124iga1sc4k4i_c1c538f0559a8c27_618eb15549bd7104_5ceeb425deb7eac2_priority
}

resource "aws_alb_listener_rule" "arn_aws_elasticloadbalancing_us_east_1_863600477985_listener_rule_app_awseb_awseb_124iga1sc4k4i_c1c538f0559a8c27_9a9bf67da4784468_ea1d20268b0f3974" {
  action {
    target_group_arn = var.aws_alb_listener_rule_arn_aws_elasticloadbalancing_us_east_1_863600477985_listener_rule_app_awseb_awseb_124iga1sc4k4i_c1c538f0559a8c27_9a9bf67da4784468_ea1d20268b0f3974_action_target_group_arn
    type             = var.aws_alb_listener_rule_arn_aws_elasticloadbalancing_us_east_1_863600477985_listener_rule_app_awseb_awseb_124iga1sc4k4i_c1c538f0559a8c27_9a9bf67da4784468_ea1d20268b0f3974_action_type
  }

  condition    = var.aws_alb_listener_rule_arn_aws_elasticloadbalancing_us_east_1_863600477985_listener_rule_app_awseb_awseb_124iga1sc4k4i_c1c538f0559a8c27_9a9bf67da4784468_ea1d20268b0f3974_condition
  listener_arn = var.aws_alb_listener_rule_arn_aws_elasticloadbalancing_us_east_1_863600477985_listener_rule_app_awseb_awseb_124iga1sc4k4i_c1c538f0559a8c27_9a9bf67da4784468_ea1d20268b0f3974_listener_arn
  priority     = var.aws_alb_listener_rule_arn_aws_elasticloadbalancing_us_east_1_863600477985_listener_rule_app_awseb_awseb_124iga1sc4k4i_c1c538f0559a8c27_9a9bf67da4784468_ea1d20268b0f3974_priority
}

resource "aws_alb_target_group" "production" {
  tags = {
    Name                                = var.aws_alb_target_group_production__tc_tags_name
    "elasticbeanstalk:environment-id"   = var.aws_alb_target_group_production__tc_tags_elasticbeanstalk_environment_id
    "elasticbeanstalk:environment-name" = var.aws_alb_target_group_production__tc_tags_elasticbeanstalk_environment_name
  }

  tags_all = {
    Name                                = var.aws_alb_target_group_production__tc_tags_all_name
    "elasticbeanstalk:environment-id"   = var.aws_alb_target_group_production__tc_tags_all_elasticbeanstalk_environment_id
    "elasticbeanstalk:environment-name" = var.aws_alb_target_group_production__tc_tags_all_elasticbeanstalk_environment_name
  }

  deregistration_delay = var.aws_alb_target_group_production_deregistration_delay
  health_check {
    enabled             = var.aws_alb_target_group_production_health_check_enabled
    healthy_threshold   = var.aws_alb_target_group_production_health_check_healthy_threshold
    interval            = var.aws_alb_target_group_production_health_check_interval
    matcher             = var.aws_alb_target_group_production_health_check_matcher
    path                = var.aws_alb_target_group_production_health_check_path
    port                = var.aws_alb_target_group_production_health_check_port
    protocol            = var.aws_alb_target_group_production_health_check_protocol
    timeout             = var.aws_alb_target_group_production_health_check_timeout
    unhealthy_threshold = var.aws_alb_target_group_production_health_check_unhealthy_threshold
  }

  load_balancing_algorithm_type = var.aws_alb_target_group_production_load_balancing_algorithm_type
  name                          = var.aws_alb_target_group_production_name
  port                          = var.aws_alb_target_group_production_port
  protocol                      = var.aws_alb_target_group_production_protocol
  protocol_version              = var.aws_alb_target_group_production_protocol_version
  stickiness {
    cookie_duration = var.aws_alb_target_group_production_stickiness_cookie_duration
    type            = var.aws_alb_target_group_production_stickiness_type
  }

  target_type = var.aws_alb_target_group_production_target_type
  vpc_id      = var.aws_alb_target_group_production_vpc_id
}

resource "aws_alb_target_group_attachment" "i_008e350081cbb4f21_80_arn_aws_elasticloadbalancing_us_east_1_863600477985_targetgroup_awseb_awseb_1ny47ug2m2fw4_975f648a7460bd1b" {
  port             = var.aws_alb_target_group_attachment_i_008e350081cbb4f21_80_arn_aws_elasticloadbalancing_us_east_1_863600477985_targetgroup_awseb_awseb_1ny47ug2m2fw4_975f648a7460bd1b_port
  target_group_arn = var.aws_alb_target_group_attachment_i_008e350081cbb4f21_80_arn_aws_elasticloadbalancing_us_east_1_863600477985_targetgroup_awseb_awseb_1ny47ug2m2fw4_975f648a7460bd1b_target_group_arn
  target_id        = var.aws_alb_target_group_attachment_i_008e350081cbb4f21_80_arn_aws_elasticloadbalancing_us_east_1_863600477985_targetgroup_awseb_awseb_1ny47ug2m2fw4_975f648a7460bd1b_target_id
}

