class CreatePaquetes < ActiveRecord::Migration
   def change
    create_table :paquetes do |t|
      t.integer :recibo_id, null: false
      t.string :detalle, null: false, limit: 60
      t.integer :cliente_id_receptor, null: false

      t.timestamps
    end
      add_index :paquetes, :recibo_id
      add_index :paquetes, :cliente_id_receptor
  end
end
