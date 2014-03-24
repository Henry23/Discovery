class CreateRecibos < ActiveRecord::Migration
   def change
    create_table :recibos do |t|
      t.integer :empleado_id, null: true
      t.string :cliente_id, null: false, limit:15, null:false
      t.integer :camino_id, null:false
      t.date :fecha_de_viaje, null:false
      t.string :tipo, limit: 60, null: false, :default => 'Normal'
      t.integer :asiento, null: false
      t.decimal :costo, null: false, :default => 120
  
      t.timestamps
    end
    add_index :recibos, :camino_id
    add_index :recibos, :empleado_id
    add_index :recibos, :cliente_id
  end
end
