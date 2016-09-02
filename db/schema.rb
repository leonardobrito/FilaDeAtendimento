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

ActiveRecord::Schema.define(version: 20160902205839) do

  create_table "consulta", force: :cascade do |t|
    t.string   "nome"
    t.time     "duracao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "consultas", force: :cascade do |t|
    t.time     "inicio"
    t.time     "fim"
    t.time     "duracao"
    t.date     "data"
    t.string   "status"
    t.integer  "numeroFila"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "paciente_id"
    t.integer  "tipo_consulta_id"
  end

  add_index "consultas", ["paciente_id"], name: "index_consultas_on_paciente_id"
  add_index "consultas", ["tipo_consulta_id"], name: "index_consultas_on_tipo_consulta_id"

  create_table "pacientes", force: :cascade do |t|
    t.string   "nome"
    t.string   "cpf"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "prioridade_id"
  end

  add_index "pacientes", ["prioridade_id"], name: "index_pacientes_on_prioridade_id"

  create_table "prioridades", force: :cascade do |t|
    t.integer  "nivel"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nome"
  end

  create_table "tipo_consultas", force: :cascade do |t|
    t.string   "nome"
    t.time     "duracao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "nome"
    t.string   "cpf"
    t.string   "senha"
    t.integer  "nivel"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
