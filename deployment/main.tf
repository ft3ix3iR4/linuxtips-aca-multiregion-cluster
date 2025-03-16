module "cluster" {
  # source = "https://github.com/ft3ix3iR4/linuxtips-aca-modules.git//cluster?ref=v1.1.0"
  source       = "https://github.com/ft3ix3iR4/linuxtips-aca-modules/releases/tag/v1.1.0"
  project_name = var.project_name
  region       = var.region

  vpc_id = data.aws_ssm_parameter.vpc.value

  private_subnets = data.aws_ssm_parameter.private_subnets[*].value
  public_subnets  = data.aws_ssm_parameter.public_subnets[*].value
}
