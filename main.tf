module "github_teams_members" {
  source       = "github.com/mentoriaiac/iac-modulo-github.git?ref=v0.1.0"
  organization = "mentoriaiac"
  team_members = ["gomex", "somatorio", "lgfa29", "sebastianwebber", "afonsoaugusto", "edsoncelio", "edsoncelio", "snifbr", "ya-kimura", "Rehzende", "marcelomansur", "lariskovski", "tainara-almeida", "lipenodias", "rodriguezbarreto", "jandson-oliveira", "EzzioMoreira"]
  team_name    = "moderadores"
}
