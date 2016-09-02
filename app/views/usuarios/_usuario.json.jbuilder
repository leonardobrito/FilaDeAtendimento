json.extract! usuario, :id, :nome, :cpf, :senha, :nivel, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)