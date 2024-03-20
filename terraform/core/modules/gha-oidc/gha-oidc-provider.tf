variable "GithubOrganization" {
  type = string
  description = "Name of the Github Organisation"
}
variable "RepositoryName" {
  type = string
  description = "Name of the Github Repository"
}
resource "aws_iam_openid_connect_provider" "gha_oidc_provider" {
  url = "https://token.actions.githubusercontent.com"
  client_id_list = [ 
    "sts.amazonaws.com",
    "https://github.com/${var.GithubOrganization}/${var.RepositoryName}"
   ]
  thumbprint_list = [ 
    "ffffffffffffffffffffffffffffffffffffffff"
   ]
}
output "gha_oidc_provider_arn" {
  value = aws_iam_openid_connect_provider.gha_oidc_provider.arn
}