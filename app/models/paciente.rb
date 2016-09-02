class Paciente < ActiveRecord::Base
    validates :nome, :cpf, presence: true
	has_many :prioridades
	belongs_to :consulta
end
