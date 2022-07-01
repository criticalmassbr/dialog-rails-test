# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Deleta todos os users existentes para criar os novos registros
User.delete_all
 
NOMES = ['Helena','Miguel','Alice','Arthur','Laura','Heitor','Manuela','Bernardo','Valentina','Davi','Sophia','Théo','Isabella','Lorenzo','Heloísa','Gabriel','Luiza','Pedro','Júlia','Benjamin','Lorena','Matheus','Lívia','Lucas','Maria Luiza','Nicolas','Cecília','Joaquim','Eloá','Samuel','Giovanna','Henrique','Maria Clara','Rafael','Maria Eduarda', 'Guilherme','Mariana','Enzo','Lara','Murilo','Beatriz','Benício','Antonella','Gustavo','Maria Júlia','Isaac','Emanuelly','João Miguel','Isadora','Lucca','Ana Clara', 'Enzo Gabriel','Melissa','Pedro Henrique','Ana Luiza','Felipe','Ana Júlia','João Pedro','Esther','Pietro','Lavínia','Anthony','Maitê','Daniel','Maria Cecília', 'Bryan','Maria Alice','Davi Lucca','Sarah','Leonardo','Elisa','Vicente','Liz','Eduardo','Yasmin','Gael','Isabelly','Antônio','Alícia','Vitor','Clara','Noah','Isis','Caio','Rebeca','João','Rafaela','Emanuel','Marina','Cauã','Ana Laura','João Lucas','Maria Helena','Calebe','Agatha','Enrico','Gabriela','Vinícius','Catarina','Bento']
GENEROS = ['M', 'F', 'Outros']

# Lendo os Estados
require "json"
file_path = File.join(Rails.root, 'db', 'estados.json')
json_from_file = File.read(file_path)
hash = JSON.parse(json_from_file)

estados = hash["estados"]

(1..100).each do |i|
    
    estado_objeto = estados.sample
    uf = estado_objeto["sigla"]
    cidade = estado_objeto["cidades"].sample

    u = User.create(
        nome: NOMES.sample,
        uf: uf,
        cidade: cidade,
        sexo: GENEROS.sample,
        idade: rand(18..100)
    )
    puts "#{u.nome} created"
end
