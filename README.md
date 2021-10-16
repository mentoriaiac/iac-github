# iac-github
Repositório IaC para utilização do módulo github

## Dependências

Para realizar os teste localmente é necessário:

```
terraform >= 1.0.0
GITHUB_TOKEN = <seu_token>
```

[Documentação GitHub Token](https://docs.github.com/pt/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token)

[Atalho do GitHub Token no seu Profile](https://github.com/settings/tokens)

## Entendendo Workspace

Para utilizar a main, utilizamos o conceito de "workspaces" do terraform. Com isso, voce pode administrar o terraform em ambientes distintos.  

## Utilizando o módulo

### Primeiro Passo:

Inicialize o Terraform
```
terraform init
```

Inicialize o seu Workspace:
```
terraform workspace new testing
```

Para ver todos os Workspaces:
```
terraform workspace list
```

### Segundo Passo:

Personalize o `parameters.tf`:
```
testing = {
      organization = "seu-time"
      team_members = ["user1", "user2"]
      team_name    = "developers"
    }
```

Tente criar o primeiro plan:
```
terraform plan
```

Obs.: Caso retorne erro 401, verifique seu GITHUB_TOKEN. Caso 404 verique a permissão que possui dentro da organização. 

### Terceiro Passo:

Aplique suas mudanças:
```
terraform apply
```

