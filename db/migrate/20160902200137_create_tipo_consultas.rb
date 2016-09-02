class CreateTipoConsultas < ActiveRecord::Migration
  def change
    create_table :tipo_consultas do |t|
      t.string :nome
      t.time :duracao

      t.timestamps
    end
  end
end
