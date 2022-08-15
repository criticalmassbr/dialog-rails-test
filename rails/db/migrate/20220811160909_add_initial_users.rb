class AddInitialUsers < ActiveRecord::Migration[6.1]
  def up

    ufs = [
      'RO',
      'AC',
      'AM',
      'RR',
      'PA',
      'AP',
      'TO',
      'MA',
      'PI',
      'CE',
      'RN',
      'PB',
      'PE',
      'AL',
      'SE',
      'BA',
      'MG',
      'ES',
      'RJ',
      'SP',
      'PR',
      'SC',
      'RS',
      'MS',
      'MT',
      'GO',
      'DF',
    ]

    99.times do |user_index|
      User.create!(
        name: Faker::Name.name,
        age: Faker::Number.number(digits: 2),
        gender: ['F', 'M'].sample,
        city: Faker::Address.city,
        uf: ufs.sample
      )
    end

    def down
      User.delete_all
    end
  end
end
