json.extract! pessoa, :id, :nome, :idade, :email, :enderecoL1, :numCasa, :created_at, :updated_at
json.url pessoa_url(pessoa, format: :json)
