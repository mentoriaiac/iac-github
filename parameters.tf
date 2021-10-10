locals {
  env = {
    default = {
      name = terraform.workspace
    }
    testing = {
      organization = "teste-team-module"
      team_members = ["snifbr", "lipenodias"]
      team_name    = "developers"
    }
    production = {
      organization = "teste-team-module"
      team_members = ["karollynecosta", "rehzende", "jandson-oliveira"]
      team_name    = "developers"
    }
  }
  environmentvars = contains(keys(local.env), terraform.workspace) ? terraform.workspace : "default"
  workspace       = merge(local.env["default"], local.env[local.environmentvars])
}
