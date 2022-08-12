# frozen_string_literal: true

FactoryBot.define do
  factory :user, class: 'User' do
    nome { Faker::Movies::LordOfTheRings.character }
    idade { Faker::Number.between(from: 1, to: 100) }
    sexo { %w[Masculino Feminino Outro].sample }
    cidade { Faker::Movies::LordOfTheRings.location }
    uf { %w[AL SP SC].sample }
  end
end
