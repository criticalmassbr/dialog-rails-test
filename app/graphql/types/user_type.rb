module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :age, Integer, null: false
    field :sex, String, null: false
    field :city, String, null: false
    field :uf, String, null: false
  end
end
