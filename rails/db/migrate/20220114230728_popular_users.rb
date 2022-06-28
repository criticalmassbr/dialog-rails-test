# frozen_string_literal: true

# quantidade de registros 100
class PopularUsers < ActiveRecord::Migration[6.0]
  def change
    100.times do
      user = User.create(
        nome: Faker::Name.name,
        idade: rand(18..72),
        sexo: User.sexos.keys.sample,
        uf: Faker::Address.state_abbr,
        cidade: Faker::Address.city
      )

      puts "Usuário criado com sucesso: #{user.id}"
    end
  end
end
