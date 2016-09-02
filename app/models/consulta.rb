class Consulta < ActiveRecord::Base
    validates :nome, :duracao, presence: true
end
