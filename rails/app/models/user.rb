class User < ApplicationRecord

    validates :name, presence: true
    validates :age, presence: true
    validates :gender, presence: true
    validates :city, presence: true
    validates :uf, presence: true

end
