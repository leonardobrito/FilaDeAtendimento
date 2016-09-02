class PacientesController < ApplicationController
  before_action :set_paciente, only: [:show, :edit, :update, :destroy]

  # GET /pacientes
  # GET /pacientes.json
  def index
	 @pacientes = Paciente.all
#	 listaPorStatus --------------------------------------------------------------------->
  end
	
#  def atendimento
#	  listaPorStatus -------------------------------------------------------------------->
#  end

  # Retorna um json, para ser acessado pelo android
  # Precisa ser refatorado...
#  def getFila
#    fila = []
#    @paciente = Paciente.all
#    # FormatoDaHoraCerta....
#    @paciente.each do |f|
#      fila << {:nome => f.nome, :status => f.status,
#       :hora => f.created_at.strftime("%H:%M")} ----------------------------------------->
#    end
#    # @filas.each do |f|
#    #   f = hora: => f.created_at.strftime("%H:%M")
#    # end
#    # render :json => @filas.as_json(only: [:id, :nome, :hora])
#    render :json => fila
#  end
      
  # Muda o status de quem está em atendimento e chama o próximo
#  def chamarProximo
#    # Troca o status de quem está na fila
#    @concluido = PacientesHelper.chamada(1) ---------------------------------------------->
#    @filas = PacientesHelper.chamada(0)
#    redirect_to '/atendimento'
#  end
	
  # Muda o status de quem está em espera para ser atendido...
  # Precisa ser refatorado...
#  def chamar
#    # Troca o status de quem está na fila
#    @concluido = PacientesHelper.chamada(1) ----------------------------------------------->
#    @filas = PacientesHelper.chamada(0)
#    redirect_to '/atendimento'
#  end

  # Muda o status de quem está em atendimento
#  def dispensar
#    @concluido = PacientesHelper.chamada(1) ------------------------------------------------->
#    redirect_to '/atendimento'
#  end

  # GET /pacientes/1
  # GET /pacientes/1.json
  def show
  end

  # GET /pacientes/new
  def new
    @paciente = Paciente.new
  end

  # GET /pacientes/1/edit
  def edit
  end

  # POST /pacientes
  # POST /pacientes.json
  def create
    @paciente = Paciente.new(paciente_params)
    #@paciente.status = 0 ------------------------------------------------------------------------>
    respond_to do |format|
      if @paciente.save
        format.html { redirect_to @paciente, notice: 'Paciente was successfully created.' }
        format.json { render :show, status: :created, location: @paciente }
      else
        format.html { render :new }
        format.json { render json: @paciente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pacientes/1
  # PATCH/PUT /pacientes/1.json
  def update
    respond_to do |format|
      if @paciente.update(paciente_params)
        format.html { redirect_to @paciente, notice: 'Paciente was successfully updated.' }
        format.json { render :show, status: :ok, location: @paciente }
      else
        format.html { render :edit }
        format.json { render json: @paciente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pacientes/1
  # DELETE /pacientes/1.json
  def destroy
    @paciente.destroy
    respond_to do |format|
      format.html { redirect_to pacientes_url, notice: 'Paciente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paciente
      @paciente = Paciente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paciente_params
      params.require(:paciente).permit(:nome, :cpf)
    end
	
	# Lista os pacientes apartir do Status para os métodos index e atendimento
#	def listaPorStatus
#	  @pacientes = Paciente.all
#      # Busca lista de usuários por status em espera
#	  @filas = @pacientes.where(status: 0)
#      # Busca lista de usuários por status em atendido
#      @atendido = @pacientes.where(status: 2)
#      # Encontra quem está em atendimento
#      @emAtendimento = @pacientes.find_by(status: 1)
#	end
end
