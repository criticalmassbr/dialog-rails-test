class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :nome, null: false
      t.integer :idade, null: false
      t.integer :sexo, null: false
      t.string :cidade, null: false
      t.string :uf, null: false

      t.timestamps
    end
  end
end
