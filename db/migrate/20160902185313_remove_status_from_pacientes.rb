class RemoveStatusFromPacientes < ActiveRecord::Migration
  def change
    remove_column :pacientes, :status, :integer
  end
end
