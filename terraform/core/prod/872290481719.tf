locals {
  GithubOrganization = "sayan-me"
  RepositoryName = "project12-IaC"
  env = "prod"
}
module "gha_integration" {
  source = "../modules/gha-oidc"
  GithubOrganization = local.GithubOrganization
  RepositoryName = local.RepositoryName
  env = local.env
}