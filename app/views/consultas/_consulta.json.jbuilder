json.extract! consulta, :id, :nome, :duracao, :created_at, :updated_at
json.url consulta_url(consulta, format: :json)