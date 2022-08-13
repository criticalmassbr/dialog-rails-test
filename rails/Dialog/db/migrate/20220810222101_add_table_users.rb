class AddTableUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|

      t.string :name
      t.integer :age
      t.string :gender
      t.string :city
      t.string :uf

      t.timestamps
    end
  end
end
