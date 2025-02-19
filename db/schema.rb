# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025031211116) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "setors", force: :cascade do |t|
    t.string "nome"
    t.bigint "unidade_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["unidade_id"], name: "index_setors_on_unidade_id"
  end

  create_table "unidades", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "nome"
    t.integer "role", default: 0, null: false
    t.bigint "setor_id"
    t.bigint "unidade_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["setor_id"], name: "index_users_on_setor_id"
    t.index ["unidade_id"], name: "index_users_on_unidade_id"
  end

  create_table "visitantes", force: :cascade do |t|
    t.string "nome", null: false
    t.string "cpf", null: false
    t.string "rg", null: false
    t.string "telefone", null: false
    t.string "foto", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "visitas", force: :cascade do |t|
    t.bigint "visitante_id", null: false
    t.bigint "user_id"
    t.bigint "setor_id"
    t.integer "status"
    t.date "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["setor_id"], name: "index_visitas_on_setor_id"
    t.index ["user_id"], name: "index_visitas_on_user_id"
    t.index ["visitante_id"], name: "index_visitas_on_visitante_id"
  end

  add_foreign_key "setors", "unidades"
  add_foreign_key "visitas", "setors"
  add_foreign_key "visitas", "users"
  add_foreign_key "visitas", "visitantes"
end
