class CreateUser < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :nome
      t.integer :idade
      t.string :cidade
      t.string :uf
      t.string :sexo
    end
  end
end
