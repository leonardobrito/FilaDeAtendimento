json.extract! consulta, :id, :inicio, :fim, :duracao, :data, :status, :numeroFila, :created_at, :updated_at
json.url consulta_url(consulta, format: :json)