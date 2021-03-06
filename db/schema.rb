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

ActiveRecord::Schema.define(version: 20150331152834) do

  create_table "departamentos", force: :cascade do |t|
    t.integer  "empresa_id"
    t.string   "nome"
    t.string   "ramal"
    t.string   "responsavel"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "departamentos", ["empresa_id"], name: "index_departamentos_on_empresa_id"

  create_table "empresas", force: :cascade do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "telefone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "funcionarios", force: :cascade do |t|
    t.integer  "departamento_id"
    t.string   "nome"
    t.string   "cargo"
    t.string   "sexo"
    t.string   "endereco"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "funcionarios", ["departamento_id"], name: "index_funcionarios_on_departamento_id"

end
