json.extract! user, :id, :nome, :idade, :sexo, :cidade, :uf, :created_at, :updated_at
json.url user_url(user, format: :json)
