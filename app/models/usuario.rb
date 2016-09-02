class Usuario < ActiveRecord::Base
    validates :nome, :cpf, :senha, :nivel, presence: true
end
