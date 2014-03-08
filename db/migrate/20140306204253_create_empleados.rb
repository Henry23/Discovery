class CreateEmpleados < ActiveRecord::Migration
 def change
   create_table :empleados, {:id => false} do |t|
      t.string :empleado_id, limit:15, null:false, unique:true
      t.string :primer_nombre, limit: 20, null: false
      t.string :segundo_nombre, limit: 20, null: false
      t.string :primer_apellido, limit: 20, null: false
      t.string :segundo_apellido, limit: 20, null: false
      t.integer :terminal_id, null: false
      t.date :fecha_nacimiento, null: false
      t.date :fecha_inicio, null: false
      t.string :direccion, limit: 60, null: false
      t.string :profesion, limit: 30, null: false
      t.string :telefono, limit: 20, null: false
      t.string :nacionalidad, limit: 30, null: false
      t.string :usuario, limit: 20, null: false
      t.string :contrasena, limit: 16, null: false
      t.boolean :administrador, null:false
      
      t.timestamps
    end
    execute "ALTER TABLE empleados ADD PRIMARY KEY (empleado_id);"
    add_index :empleados, :terminal_id
  end
end
