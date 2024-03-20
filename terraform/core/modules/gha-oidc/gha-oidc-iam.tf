data "aws_caller_identity" "current" {}

resource "aws_iam_role" "gha_admin_role" {
  name = "gha-admin-role"
  assume_role_policy = templatefile(
      "${path.module}/templates/iam/policies/gha_admin_policy.json.tftpl",
      {
        aws_account_id = data.aws_caller_identity.current.account_id
        gh_org = var.GithubOrganization
        gh_repo = var.RepositoryName
        env = var.env
      }
  )
  managed_policy_arns = [
    "arn:aws:iam::aws:policy/AdministratorAccess"
  ]
  max_session_duration = 4500
}
