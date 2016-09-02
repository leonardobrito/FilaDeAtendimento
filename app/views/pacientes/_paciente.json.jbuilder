json.extract! paciente, :id, :nome, :cpf, :status, :created_at, :updated_at
json.url paciente_url(paciente, format: :json)