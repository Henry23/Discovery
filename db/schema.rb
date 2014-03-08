# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140306204426) do

  create_table "buses", force: true do |t|
    t.integer  "empleado_id", null: false
    t.integer  "capasidad",   null: false
    t.date     "matricula",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "buses", ["empleado_id"], name: "index_buses_on_empleado_id", using: :btree

  create_table "clientes", primary_key: "cliente_id", force: true do |t|
    t.string   "documento",          limit: 25, null: false
    t.string   "nacionalidad",       limit: 30, null: false
    t.string   "primer_nombre",      limit: 60, null: false
    t.string   "segundo_nombre",     limit: 60, null: false
    t.string   "primer_apellido",    limit: 60, null: false
    t.string   "segundo_apellido",   limit: 60, null: false
    t.date     "fecha_Nacimiento"
    t.string   "correo_electronico"
    t.integer  "telefono",                      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "empleados", primary_key: "empleado_id", force: true do |t|
    t.string   "primer_nombre",    limit: 20, null: false
    t.string   "segundo_nombre",   limit: 20, null: false
    t.string   "primer_apellido",  limit: 20, null: false
    t.string   "segundo_apellido", limit: 20, null: false
    t.integer  "terminal_id",                 null: false
    t.date     "fecha_nacimiento",            null: false
    t.date     "fecha_inicio",                null: false
    t.string   "direccion",        limit: 60, null: false
    t.string   "profesion",        limit: 30, null: false
    t.string   "telefono",         limit: 20, null: false
    t.string   "nacionalidad",     limit: 30, null: false
    t.string   "usuario",          limit: 20, null: false
    t.string   "contrasena",       limit: 16, null: false
    t.boolean  "administrador",               null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "empleados", ["terminal_id"], name: "index_empleados_on_terminal_id", using: :btree

  create_table "paquetes", force: true do |t|
    t.integer  "recibo_id",                      null: false
    t.string   "detalle",             limit: 60, null: false
    t.integer  "cliente_id_receptor",            null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "paquetes", ["cliente_id_receptor"], name: "index_paquetes_on_cliente_id_receptor", using: :btree
  add_index "paquetes", ["recibo_id"], name: "index_paquetes_on_recibo_id", using: :btree

  create_table "recibos", force: true do |t|
    t.integer  "ruta_id",                                            null: false
    t.integer  "empleado_id"
    t.integer  "cliente_id",                                         null: false
    t.date     "fecha_de_viaje",                                     null: false
    t.string   "tipo",           limit: 60,                          null: false
    t.integer  "asiento",                                            null: false
    t.decimal  "costo",                     precision: 10, scale: 0, null: false
    t.decimal  "impuesto",                  precision: 10, scale: 0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "recibos", ["cliente_id"], name: "index_recibos_on_cliente_id", using: :btree
  add_index "recibos", ["empleado_id"], name: "index_recibos_on_empleado_id", using: :btree
  add_index "recibos", ["ruta_id"], name: "index_recibos_on_ruta_id", using: :btree

  create_table "rutas", force: true do |t|
    t.time     "hora_salida",         null: false
    t.time     "hora_llegada",        null: false
    t.integer  "terminal_id_origen",  null: false
    t.string   "terminal_id_destino", null: false
    t.integer  "bus_id",              null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rutas", ["bus_id"], name: "index_rutas_on_bus_id", using: :btree
  add_index "rutas", ["terminal_id_destino"], name: "index_rutas_on_terminal_id_destino", using: :btree
  add_index "rutas", ["terminal_id_origen"], name: "index_rutas_on_terminal_id_origen", using: :btree

  create_table "terminals", force: true do |t|
    t.string   "nombre",     limit: 20, null: false
    t.string   "direccion",  limit: 60, null: false
    t.string   "telefono",   limit: 20, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
