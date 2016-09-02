class AddPrioridadeRefToPacientes < ActiveRecord::Migration
  def change
    add_reference :pacientes, :prioridade, index: true, foreign_key: true
  end
end
