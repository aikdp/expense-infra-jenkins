locals {
  resource_name = "${var.project_name}-${var.environment}"      #expense-dev
  https_certificate_arn = data.aws_ssm_parameter.https_certificate_arn.value
}

  # db_subnet_ids = split(",", data.aws_ssm_parameter.database_subnet_ids[*].value)