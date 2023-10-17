# frozen_literal_string: true

class User < ApplicationRecord
  validates :nome, presence: { message: "é um campo obrigatório" }
  validates :idade, presence: { message: "é um campo obrigatório" }
  validates :idade, numericality: { only_integer: true, greater_than_or_equal_to: 18, message: "deve ser um número inteiro maior ou igual a 18" }
  validates :sexo, inclusion: { in: %w[Masculino Feminino], allow_blank: true }
end
