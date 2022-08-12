class User < ApplicationRecord
  enum sexo: %w[Masculino Feminino Outro]

  validates :nome, presence: true
  validates :idade, presence: true, numericality: { greater_than_or_equal_to: 1 }
  validates :sexo, presence: true
  validates :uf, presence: true, length: { maximum: 2, too_long: '%{count} characters is the maximum allowed' }
  validates :cidade, presence: true
end
