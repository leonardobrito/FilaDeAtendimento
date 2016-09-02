class TipoConsultasController < ApplicationController
  before_action :set_tipo_consulta, only: [:show, :edit, :update, :destroy]

  # GET /tipo_consultas
  # GET /tipo_consultas.json
  def index
    @tipo_consultas = TipoConsulta.all
  end

  # GET /tipo_consultas/1
  # GET /tipo_consultas/1.json
  def show
  end

  # GET /tipo_consultas/new
  def new
    @tipo_consulta = TipoConsulta.new
  end

  # GET /tipo_consultas/1/edit
  def edit
  end

  # POST /tipo_consultas
  # POST /tipo_consultas.json
  def create
    @tipo_consulta = TipoConsulta.new(tipo_consulta_params)

    respond_to do |format|
      if @tipo_consulta.save
        format.html { redirect_to @tipo_consulta, notice: 'Tipo consulta was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_consulta }
      else
        format.html { render :new }
        format.json { render json: @tipo_consulta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_consultas/1
  # PATCH/PUT /tipo_consultas/1.json
  def update
    respond_to do |format|
      if @tipo_consulta.update(tipo_consulta_params)
        format.html { redirect_to @tipo_consulta, notice: 'Tipo consulta was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_consulta }
      else
        format.html { render :edit }
        format.json { render json: @tipo_consulta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_consultas/1
  # DELETE /tipo_consultas/1.json
  def destroy
    @tipo_consulta.destroy
    respond_to do |format|
      format.html { redirect_to tipo_consultas_url, notice: 'Tipo consulta was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_consulta
      @tipo_consulta = TipoConsulta.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_consulta_params
      params.require(:tipo_consulta).permit(:nome, :duracao)
    end
end
