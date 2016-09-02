class CreateConsultas < ActiveRecord::Migration
  def change
    create_table :consultas do |t|
      t.time :inicio
      t.time :fim
      t.time :duracao
      t.date :data
      t.string :status
      t.integer :numeroFila

      t.timestamps null: false
    end
  end
end
