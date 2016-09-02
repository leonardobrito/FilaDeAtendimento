class Paciente < ActiveRecord::Base
    validates :nome, :cpf, :status, presence: true
end
