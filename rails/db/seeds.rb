# create users
User.create!(nome: 'firmo holanda',
             idade: 39,
             sexo: 'male',
             cidade: 'sao paulo',
             uf: 'sp')

99.times do |n|
  nome = Faker::Name.name.downcase
  idade = rand(21..100)
  sexo = Faker::Gender.binary_type.downcase
  cidade = Faker::Address.city.downcase
  uf = Faker::Address.state_abbr.downcase
  User.create!(nome: nome, idade: idade, sexo: sexo, cidade: cidade, uf: uf)
end