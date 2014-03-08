class CreateTerminals < ActiveRecord::Migration
  def change
    create_table :terminals do |t|
      t.string :nombre, limit: 20, null: false
      t.string :direccion, limit: 60, null: false
      t.string :telefono, limit: 20, null: false

      t.timestamps
    end
  end
end
