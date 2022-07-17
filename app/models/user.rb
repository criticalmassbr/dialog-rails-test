class User < ApplicationRecord
    validates :name, presence: { message: "name must be filled" }
    validates :age, presence: true, numericality: {only_integer: true, greater_than: 0}
    validates :sex, inclusion: { in: %w[Male Female Other].freeze }
    validates :city, presence: { message: "city must be filled" }
    validates :uf, inclusion: { in: ApplicationHelper::UF }
end
