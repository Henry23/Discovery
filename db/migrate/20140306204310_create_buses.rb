class CreateBuses < ActiveRecord::Migration
   def change
    create_table :buses do |t|
      t.integer :empleado_id, null: false
      t.integer :capasidad, null: false
      t.date :matricula, null: false

      t.timestamps
    end
    add_index :buses, :empleado_id
  end
end
