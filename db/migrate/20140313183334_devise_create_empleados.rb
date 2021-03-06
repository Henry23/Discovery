class DeviseCreateEmpleados < ActiveRecord::Migration
  def change
    create_table(:empleados) do |t|
      ## Database authenticatable
      t.string :email,              :null => false, :default => ""
      t.string :encrypted_password, :null => false, :default => ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, :default => 0, :null => false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, :default => 0, :null => false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at
      
      t.string :primer_nombre, limit: 20, null: true
      t.string :segundo_nombre, limit: 20, null: true
      t.string :primer_apellido, limit: 20, null: true
      t.string :segundo_apellido, limit: 20, null: true
      t.integer :terminal_id, null: true
      t.string :sexo, null: true, limit: 2
      t.date :fecha_nacimiento, null: true
      t.date :fecha_inicio, null: true
      t.string :direccion, limit: 60, null: true
      t.string :profesion, limit: 30, null: true
      t.string :telefono, limit: 20, null: true
      t.string :nacionalidad, limit: 30, null: true
      t.boolean :administrador, null:true


      t.timestamps
    end
    add_index :empleados, :terminal_id
    add_index :empleados, :email,                :unique => true
    add_index :empleados, :reset_password_token, :unique => true
    # add_index :empleados, :confirmation_token,   :unique => true
    # add_index :empleados, :unlock_token,         :unique => true
  end
end
