class PopulateUserTable < ActiveRecord::Migration[5.2]
  def change
    puts "Iniciando processo de popular tabela de usuários:"
    50.times do
      User.create(
        nome: Faker::Name.male_first_name + ' ' + Faker::Name.last_name,
        idade: rand(18..100),
        sexo: 'Masculino',
        cidade: Faker::Address.city,
        uf: Faker::Address.state_abbr
      )

      User.create(
        nome: Faker::Name.female_first_name + ' ' + Faker::Name.last_name,
        idade: rand(18..100),
        sexo: 'Feminino',
        cidade: Faker::Address.city,
        uf: Faker::Address.state_abbr
      )

      print '.'
    end

    puts "Processo concluído"
  end
end
