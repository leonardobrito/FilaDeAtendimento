class CreatePrioridades < ActiveRecord::Migration
  def change
    create_table :prioridades do |t|
      t.integer :nivel

      t.timestamps
    end
  end
end
