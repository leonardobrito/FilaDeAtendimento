class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.string :cpf
      t.string :senha
      t.integer :nivel

      t.timestamps
    end
  end
end
