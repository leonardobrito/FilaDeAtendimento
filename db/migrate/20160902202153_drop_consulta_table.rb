class DropConsultaTable < ActiveRecord::Migration
  def up
    drop_table :consultas
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
