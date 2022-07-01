
# Desafio dialog

Projeto-desafio para desenvolvedor backend, consiste
em duas aplicações, uma em rails e a outra em node
express compartilhando o mesmo database.

## Iniciando o database
Para iniciar o database é necessário entrar no root
do projeto rails e executar os seguintes comandos 

```bash
bundle install
rake db:create
rake db:migrate
```

o bundle install é necessário visto que uma gema é
utilizada para configurar o .env e a configuração 
do database é baseada no env.

Será criado então um arquivo dialog-rails.sqlite3 na 
raíz do projeto

### Populando
Escolhi utilizar seeds(db/seeds.rb) para popular o banco de dados
e não outra migration, então basta executar

```bash
rake db:seed
```
que o sistema irá criar 100 usuários na tabela "users"
com uf e cidades baseados no git:
https://gist.github.com/letanure/3012978

## Página de CRUD

Após iniciar o servidor com

```bash
rails s
```

Acessar a página localhost:3000 redirecionará para
a página dos usuários, clicar em qualquer nome permite
editá-lo.


## API

Basta executar

```bash
npm install
yarn start
```

A aplicação irá executar na porta 3005 e a rota
"user/x" irá retornar a páginação na página 'x',
ordenado por id, além do count contabilizando todas
as ocorrências de usuário

### Banco de dados e ORM
O Sequelize é utilizado como ORM.As aplicações compartilham o mesmo banco de dados,
para isso foi necessário colocar o caminho para o arquivo
.sqlite3
```bash
DB_NAME=../../rails/dialog-rails.sqlite3
```







