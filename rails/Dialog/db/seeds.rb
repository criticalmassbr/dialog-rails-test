100.times do
  User.create(name: Faker::Name.name,
              age:  Faker::Number.between(from: 18, to: 80),
              gender: Faker::Gender.binary_type,
              city: Faker::Address.city,
              uf: Faker::Address.state_abbr)
end
