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

ActiveRecord::Schema.define(version: 20160610212433) do

  create_table "autores", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.string   "foto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "autores_titulos", id: false, force: true do |t|
    t.integer "autor_id"
    t.integer "titulo_id"
  end

  add_index "autores_titulos", ["autor_id"], name: "index_autores_titulos_on_autor_id", using: :btree
  add_index "autores_titulos", ["titulo_id"], name: "index_autores_titulos_on_titulo_id", using: :btree

  create_table "categorias", force: true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "condiciones", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "editores", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.string   "web"
    t.string   "logo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "formatos", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "idiomas", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "libros", force: true do |t|
    t.integer  "titulo_id"
    t.integer  "editor_id"
    t.integer  "paginas"
    t.string   "edicion"
    t.string   "fechapub"
    t.integer  "pais_id"
    t.integer  "idioma_id"
    t.integer  "formato_id"
    t.integer  "condicion_id"
    t.string   "isbn10"
    t.string   "isbn13"
    t.string   "ean"
    t.integer  "peso"
    t.string   "medidas"
    t.string   "portada"
    t.float    "precio",       limit: 24
    t.boolean  "publico"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "paises", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "solicitudes", force: true do |t|
    t.string   "titulo"
    t.string   "autor"
    t.text     "informacion"
    t.string   "nombre"
    t.string   "correo"
    t.string   "telefono"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "titulos", force: true do |t|
    t.string   "nombre"
    t.string   "balazo"
    t.integer  "categoria_id"
    t.text     "descripcion"
    t.string   "aniopub"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
