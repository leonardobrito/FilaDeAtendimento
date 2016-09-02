json.extract! tipo_consulta, :id, :nome, :duracao, :created_at, :updated_at
json.url tipo_consulta_url(tipo_consulta, format: :json)