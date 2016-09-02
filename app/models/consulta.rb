class Consulta < ActiveRecord::Base
	has_many :pacientes
	has_many :tipo_consulta
end
