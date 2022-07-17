class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :sex
      t.string :city
      t.string :uf

      t.timestamps
    end
  end
end
