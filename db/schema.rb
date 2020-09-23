# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_23_095309) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "con_ins_relations", force: :cascade do |t|
    t.integer "contract_id"
    t.integer "instrument_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["contract_id", "instrument_id"], name: "index_con_ins_relations_on_contract_id_and_instrument_id", unique: true
    t.index ["contract_id"], name: "index_con_ins_relations_on_contract_id"
    t.index ["instrument_id"], name: "index_con_ins_relations_on_instrument_id"
  end

  create_table "contracts", force: :cascade do |t|
    t.string "name"
    t.integer "status"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ins_preset_relations", force: :cascade do |t|
    t.integer "instrument_id"
    t.integer "preset_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["instrument_id", "preset_id"], name: "index_ins_preset_relations_on_instrument_id_and_preset_id", unique: true
    t.index ["instrument_id"], name: "index_ins_preset_relations_on_instrument_id"
    t.index ["preset_id"], name: "index_ins_preset_relations_on_preset_id"
  end

  create_table "instruments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "presets", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_contract_relations", force: :cascade do |t|
    t.integer "user_id"
    t.integer "contract_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["contract_id"], name: "index_user_contract_relations_on_contract_id"
    t.index ["user_id", "contract_id"], name: "index_user_contract_relations_on_user_id_and_contract_id", unique: true
    t.index ["user_id"], name: "index_user_contract_relations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "account_id"
    t.string "email"
    t.integer "authority"
    t.string "password_digest"
    t.string "remember_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "token"
    t.index ["token"], name: "index_users_on_token", unique: true
  end

end
