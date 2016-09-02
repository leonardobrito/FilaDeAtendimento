class CreateConsultas < ActiveRecord::Migration
  def change
    create_table :consultas do |t|
      t.string :nome
      t.time :duracao

      t.timestamps
    end
  end
end
