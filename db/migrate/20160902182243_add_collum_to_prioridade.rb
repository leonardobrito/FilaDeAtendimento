class AddCollumToPrioridade < ActiveRecord::Migration
  def change
    add_column :prioridades, :nome, :string
  end
end
