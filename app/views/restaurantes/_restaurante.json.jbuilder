json.extract! restaurante, :id, :nome, :cnpj, :endereco, :created_at, :updated_at
json.url restaurante_url(restaurante, format: :json)
