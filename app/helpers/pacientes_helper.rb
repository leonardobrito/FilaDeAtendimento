module PacientesHelper
    # Busca pelo status
#	def self.buscaStatus(s)
#		@pacientes = Paciente.all
#		@fila = nil
#		@fila = []
#		@pacientes.each do |p|
#	    	if p.status == s
#	    		@fila << p
#	    	end
#	    end
#	    return @fila
#	end
#
#	def buscaStatus(s)
#		PacientesHelper.buscaStatus(s)
#	end

	# Troca o status de quem está na fila ou em atendimento
	def self.chamada(c)
		@ch = Paciente.find_by(status: c)
	    if @ch != nil
	      @ch.status = c + 1
	      @ch.save
	    end
	end

	def chamada(c)
		PacientesHelper.chamada(c)
	end
end
