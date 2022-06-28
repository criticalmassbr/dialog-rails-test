class User < ApplicationRecord
  enum sexo: {
    nao_informado: 0,
    masculino: 1,
    feminino: 2
  }
end
