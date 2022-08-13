json.extract! user, :id, :name, :age, :gender, :city, :uf
json.url user_url(user, format: :json)
