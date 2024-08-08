
# C2S-AuthorizationService

Serviço responsavel pela autenticação/registro de usuário

## Rodando localmente

Alterar o arquivo de configuração database.yml

Renomear .env_sample para .env

```bash
  mv .env_sample .env
```

Execute as migrações

```bash
  rails db:create
  rails db:migrate
```

Execute a aplicação

```bash
  rails s --port=3001
```
