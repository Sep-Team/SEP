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

ActiveRecord::Schema.define(version: 20131119193044) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actestados", force: true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categorias", force: true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "centros", force: true do |t|
    t.string   "codigo"
    t.string   "nombre"
    t.string   "direccion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "departamentos", force: true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "empresas", force: true do |t|
    t.string   "nit"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "fax"
    t.string   "email"
    t.string   "paginaweb"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fichas", force: true do |t|
    t.string   "numero"
    t.date     "fecha_inicio_practicas"
    t.date     "fecha_fin_practicas"
    t.integer  "programa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fichas", ["programa_id"], name: "index_fichas_on_programa_id", using: :btree

  create_table "jefes", force: true do |t|
    t.string   "nombres"
    t.string   "apellidos"
    t.string   "cargo"
    t.string   "telefono"
    t.string   "email"
    t.integer  "empresa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "jefes", ["empresa_id"], name: "index_jefes_on_empresa_id", using: :btree

  create_table "objsyproys", force: true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.integer  "departamento_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "objsyproys", ["departamento_id"], name: "index_objsyproys_on_departamento_id", using: :btree

  create_table "programas", force: true do |t|
    t.string   "nombre"
    t.string   "version"
    t.string   "codigo"
    t.integer  "centro_id"
    t.integer  "titulacion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "programas", ["centro_id"], name: "index_programas_on_centro_id", using: :btree
  add_index "programas", ["titulacion_id"], name: "index_programas_on_titulacion_id", using: :btree

  create_table "tipodocs", force: true do |t|
    t.string   "descripcion"
    t.string   "sigla"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "titulaciones", force: true do |t|
    t.string   "descripcion"
    t.string   "sigla"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
