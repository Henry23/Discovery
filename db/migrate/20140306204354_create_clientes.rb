class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes, {:id => false}  do |t|
      t.string :id, limit:15, null:false
      t.string :documento, limit:25, null:false, unique: true
      t.string :nacionalidad, limit:30, null:false
      t.string :primer_nombre, limit: 60, null: false
      t.string :segundo_nombre, limit: 60, null: false
      t.string :primer_apellido, limit: 60, null: false
      t.string :segundo_apellido, limit: 60, null: false
      t.string :sexo, null: false, limit: 2
      t.date :fecha_Nacimiento, null: true
      t.string :correo_electronico, null: true
      t.integer :telefono, null: false

      t.timestamps
    end
    execute "ALTER TABLE clientes ADD PRIMARY KEY (id);"
  end
end
