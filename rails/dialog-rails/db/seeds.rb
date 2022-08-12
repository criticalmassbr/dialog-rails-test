require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Populando o banco...\n"

100.times do
  User.create(
    nome: Faker::Movies::LordOfTheRings.character,
    idade: Faker::Number.between(from: 1, to: 100),
    sexo: Faker::Number.between(from: 0, to: 2),
    cidade: Faker::Movies::LordOfTheRings.location,
    uf: %w[AL SP SC].sample
  )
end

puts 'Usuários cadastrados com sucesso!'