class TipoConsulta < ActiveRecord::Base
	validates :nome, :duracao, presence: true
	belongs_to :consulta
end
