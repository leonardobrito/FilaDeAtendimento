class AddTipoConsultaRefToConsulta < ActiveRecord::Migration
  def change
    add_reference :consultas, :tipo_consulta, index: true, foreign_key: true
  end
end
