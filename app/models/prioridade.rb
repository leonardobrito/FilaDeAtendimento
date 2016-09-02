class Prioridade < ActiveRecord::Base
    validates :nome, :nivel, presence: true
	belongs_to :paciente
end
