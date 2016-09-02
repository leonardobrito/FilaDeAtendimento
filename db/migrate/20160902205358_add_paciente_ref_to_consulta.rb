class AddPacienteRefToConsulta < ActiveRecord::Migration
  def change
    add_reference :consultas, :paciente, index: true, foreign_key: true
  end
end
