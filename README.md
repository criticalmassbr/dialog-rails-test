# Dialog Rails/Node Test

### Observações Importantes ###
 
- Criar o banco localmente no app rails com o comando rails db:create
- Executar migração no app rails com o comando rails db:migrate
- Popular banco de dados com 100 registros, rodar o comando rails db:seed (app Rails)
- Endpoint rails (localhost:3000/users)

- Node => Setar o banco com credenciais iguais ao da aplicação rails
- Node => executar o comando npm install depois npm start
- Node => endpoint com dados paginados em json, (localhost:8080/user/index/númeropagina)
- Node => no endpoint passamos o número da pagina de 0 a 3, exemplo (localhost:8080/user/index/0), assim retorna os 25 primeiros registro ordenados por Id na direção ascendente



## Objetivo

Desenvolver uma aplicação Rails, com duas páginas de listagem:

- banco MySQL, schema deve ser `dialog-rails`
- tabela `users`
- campos `id, nome, idade, sexo, cidade, uf`
- quantidade de registros 100
- criar e popular tabela com migration(s)
- 1a página CRUD da tabela `users`
- 2a página leitura API (irá acessar o endpoint no Node), stack:
    - Node
    - REST express
        - o endpoint de leitura irá acessar diretamente os dados `dialog-rails.users` criada na migration
        - retorna um JSON, obedecendo a paginação (não pode retornar todos os registros em uma única chamada)
    - ORM sequelize
- paginação de 25 registros (tanto no CRUD, como na chamada a API)
- utilize os diretórios `node` e `rails`
- utilize os arquivos `.env` na raiz de cada diretório para string de conexão
    - string de conexão com usuário `root` sem senha

### Executar o projeto

Deverá executar com Rails `rails s` e Node `yarn start`


## Pull Request
Submeter uma PR [para esse repositório](https://github.com/criticalmassbr/dialog-rails-test).


