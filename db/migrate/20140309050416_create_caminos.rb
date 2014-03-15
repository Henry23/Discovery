class CreateCaminos < ActiveRecord::Migration
  def change
    create_table :caminos do |t|
      t.time :hora_salida, null: false
      t.time :hora_llegada, null: false
      t.integer :terminal_id_origen, null: false
      t.string :terminal_id_destino, null: false
      t.integer :bus_id, null: false

      t.timestamps
    end
     add_index :caminos, :terminal_id_origen
    add_index :caminos, :terminal_id_destino
    add_index :caminos, :bus_id
  end
end
