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

ActiveRecord::Schema.define(version: 2021_03_22_015306) do

  create_table "active_storage_attachments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "cthulhu_skills", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "find_hidden"
    t.integer "hearing"
    t.integer "first_aid"
    t.integer "therapy"
    t.integer "climbing"
    t.integer "leap"
    t.integer "throwing"
    t.integer "avoidance"
    t.integer "conceal"
    t.integer "hide"
    t.integer "stealth"
    t.integer "disguise"
    t.integer "traching"
    t.integer "navigate"
    t.integer "driving"
    t.string "control_1"
    t.integer "control_1_value"
    t.string "control_2"
    t.integer "control_2_value"
    t.string "control_3"
    t.integer "control_3_value"
    t.integer "horse_ridding"
    t.integer "heavy_machine"
    t.integer "machine_repair"
    t.integer "electrical_enginearing"
    t.integer "computer"
    t.integer "library"
    t.integer "photograpy"
    t.integer "picking"
    t.integer "swimming"
    t.integer "medicine"
    t.integer "chemistry"
    t.integer "pharmacy"
    t.integer "physics"
    t.integer "astronomy"
    t.integer "archeology"
    t.integer "history"
    t.integer "anthropology"
    t.integer "geology"
    t.integer "natural_history"
    t.integer "accounting"
    t.integer "law"
    t.integer "occult"
    t.integer "say"
    t.integer "persuade"
    t.integer "credit"
    t.integer "psyshology"
    t.integer "price_cut"
    t.string "native_language"
    t.integer "native_language_value"
    t.string "language_1"
    t.integer "language_1_value"
    t.string "language_2"
    t.integer "language_2_value"
    t.string "art"
    t.integer "art_value"
    t.string "work"
    t.integer "work_value"
    t.integer "punch"
    t.integer "kick"
    t.integer "headbutt"
    t.integer "assembled"
    t.integer "martial_arts"
    t.integer "knife"
    t.integer "japanese_sword"
    t.integer "cane"
    t.integer "handgun"
    t.integer "mythology"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cthulhus", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "job", null: false
    t.integer "age", null: false
    t.string "sex", null: false
    t.bigint "user_id"
    t.integer "str", null: false
    t.integer "con", null: false
    t.integer "pow", null: false
    t.integer "dex", null: false
    t.integer "siz", null: false
    t.integer "edu", null: false
    t.integer "int", null: false
    t.integer "app", null: false
    t.integer "san", null: false
    t.integer "luck", null: false
    t.integer "idea", null: false
    t.integer "knowledge", null: false
    t.integer "magick_points", null: false
    t.string "damage_bonus", null: false
    t.integer "life_points", null: false
    t.text "origin"
    t.text "items"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_cthulhus_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nickname", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["nickname"], name: "index_users_on_nickname", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "cthulhus", "users"
end
