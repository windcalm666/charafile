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

ActiveRecord::Schema.define(version: 2021_03_29_064339) do

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
    t.integer "electrical_engineering"
    t.integer "computer"
    t.integer "library"
    t.integer "photography"
    t.integer "picking"
    t.integer "swimming"
    t.integer "medicine"
    t.integer "chemistry"
    t.integer "pharmacy"
    t.integer "biology"
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
    t.integer "psychology"
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
    t.index ["user_id"], name: "index_cthulhus_on_user_id"
  end

  create_table "relationships", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "following_id"
    t.integer "follower_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shinobis", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.string "name", null: false
    t.integer "age"
    t.string "sex"
    t.integer "school_id", null: false
    t.string "under_school"
    t.string "school_style"
    t.string "job"
    t.string "belief"
    t.text "origin"
    t.string "shinobi_class"
    t.string "enemy"
    t.integer "achievement"
    t.boolean "skill_spaece_0"
    t.boolean "skill_spaece_1"
    t.boolean "skill_spaece_2"
    t.boolean "skill_spaece_3"
    t.boolean "skill_spaece_4"
    t.boolean "skill_spaece_5"
    t.boolean "skill_spaece_bottom"
    t.string "skill_1"
    t.string "skill_2"
    t.string "skill_3"
    t.string "skill_4"
    t.string "skill_5"
    t.string "skill_6"
    t.string "skill_7"
    t.boolean "arts_secret_1"
    t.boolean "arts_secret_2"
    t.boolean "arts_secret_3"
    t.boolean "arts_secret_4"
    t.boolean "arts_secret_5"
    t.boolean "arts_secret_6"
    t.boolean "arts_secret_7"
    t.string "arts_name_1"
    t.string "arts_name_2"
    t.string "arts_name_3"
    t.string "arts_name_4"
    t.string "arts_name_5"
    t.string "arts_name_6"
    t.string "arts_name_7"
    t.integer "arts_type_1"
    t.integer "arts_type_2"
    t.integer "arts_type_3"
    t.integer "arts_type_4"
    t.integer "arts_type_5"
    t.integer "arts_type_6"
    t.integer "arts_type_7"
    t.string "arts_skill_1"
    t.string "arts_skill_2"
    t.string "arts_skill_3"
    t.string "arts_skill_4"
    t.string "arts_skill_5"
    t.string "arts_skill_6"
    t.string "arts_skill_7"
    t.string "arts_range_1"
    t.string "arts_range_2"
    t.string "arts_range_3"
    t.string "arts_range_4"
    t.string "arts_range_5"
    t.string "arts_range_6"
    t.string "arts_range_7"
    t.string "arts_cost_1"
    t.string "arts_cost_2"
    t.string "arts_cost_3"
    t.string "arts_cost_4"
    t.string "arts_cost_5"
    t.string "arts_cost_6"
    t.string "arts_cost_7"
    t.text "arts_effect_1"
    t.text "arts_effect_2"
    t.text "arts_effect_3"
    t.text "arts_effect_4"
    t.text "arts_effect_5"
    t.text "arts_effect_6"
    t.text "arts_effect_7"
    t.string "background_1"
    t.string "background_2"
    t.string "background_3"
    t.string "background_4"
    t.string "background_5"
    t.string "background_6"
    t.string "background_7"
    t.string "background_8"
    t.string "background_9"
    t.string "background_10"
    t.integer "background_features_1"
    t.integer "background_features_2"
    t.integer "background_features_3"
    t.integer "background_features_4"
    t.integer "background_features_5"
    t.integer "background_features_6"
    t.integer "background_features_7"
    t.integer "background_features_8"
    t.integer "background_features_9"
    t.integer "background_features_10"
    t.string "backgronud_point_1"
    t.string "backgronud_point_2"
    t.string "backgronud_point_3"
    t.string "backgronud_point_4"
    t.string "backgronud_point_5"
    t.string "backgronud_point_6"
    t.string "backgronud_point_7"
    t.string "backgronud_point_8"
    t.string "backgronud_point_9"
    t.string "backgronud_point_10"
    t.text "background_effect_1"
    t.text "background_effect_2"
    t.text "background_effect_3"
    t.text "background_effect_4"
    t.text "background_effect_5"
    t.text "background_effect_6"
    t.text "background_effect_7"
    t.text "background_effect_8"
    t.text "background_effect_9"
    t.text "background_effect_10"
    t.string "mystery_name_1"
    t.string "mystery_name_2"
    t.string "mystery_skill_1"
    t.string "mystery_skill_2"
    t.string "mystery_effect_1"
    t.string "mystery_effect_2"
    t.string "mystery_directing_1"
    t.string "mystery_directing_2"
    t.string "item_name_1"
    t.string "item_name_2"
    t.string "item_name_3"
    t.string "item_name_4"
    t.string "item_name_5"
    t.integer "item_number_1"
    t.integer "item_number_2"
    t.integer "item_number_3"
    t.integer "item_number_4"
    t.integer "item_number_5"
    t.text "item_effest_1"
    t.text "item_effest_2"
    t.text "item_effest_3"
    t.text "item_effest_4"
    t.text "item_effest_5"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_shinobis_on_user_id"
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
  add_foreign_key "shinobis", "users"
end
