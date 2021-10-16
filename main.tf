module "github_teams_members" {
  source       = "github.com/mentoriaiac/iac-modulo-github.git?ref=v0.1.0"
  organization = local.workspace.organization
  team_members = local.workspace.team_members
  team_name    = local.workspace.team_name
}
