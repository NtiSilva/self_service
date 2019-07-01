json.extract! cardapio, :id, :nome, :descricao, :adicionais, :categoria, :tempo_preparo, :preco, :foto, :created_at, :updated_at
json.url cardapio_url(cardapio, format: :json)
