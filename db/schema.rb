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

ActiveRecord::Schema.define(version: 2022_01_15_120428) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "addresses", force: :cascade do |t|
    t.integer "building"
    t.text "description"
    t.bigint "street_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["street_id"], name: "index_addresses_on_street_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.integer "locality_size"
    t.integer "region"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "client_profiles", force: :cascade do |t|
    t.bigint "country_id"
    t.text "description"
    t.string "phone_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_client_profiles_on_country_id"
  end

  create_table "commercial_premises", force: :cascade do |t|
    t.decimal "area"
    t.integer "floor"
    t.integer "number_of_premises"
    t.integer "plot_of_land"
    t.bigint "commercial_premises_kind_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["commercial_premises_kind_id"], name: "index_commercial_premises_on_commercial_premises_kind_id"
  end

  create_table "commercial_premises_kinds", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "phone_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "country_side_house_kinds", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "country_side_houses", force: :cascade do |t|
    t.decimal "total_area"
    t.decimal "land_area"
    t.integer "floors_count"
    t.integer "year_of_construction"
    t.bigint "wall_material_id", null: false
    t.bigint "country_side_house_kind_id", null: false
    t.bigint "ready_state_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_side_house_kind_id"], name: "index_country_side_houses_on_country_side_house_kind_id"
    t.index ["ready_state_id"], name: "index_country_side_houses_on_ready_state_id"
    t.index ["wall_material_id"], name: "index_country_side_houses_on_wall_material_id"
  end

  create_table "deal_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "districts", force: :cascade do |t|
    t.string "name"
    t.bigint "city_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_districts_on_city_id"
  end

  create_table "flats", force: :cascade do |t|
    t.integer "rooms_count"
    t.integer "floor"
    t.integer "year_of_construction"
    t.decimal "celling_height"
    t.decimal "total_area"
    t.decimal "living_area"
    t.decimal "kitchen_area"
    t.bigint "renovation_id", null: false
    t.bigint "wall_material_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["renovation_id"], name: "index_flats_on_renovation_id"
    t.index ["wall_material_id"], name: "index_flats_on_wall_material_id"
  end

  create_table "lots", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "state"
    t.decimal "price"
    t.bigint "deal_type_id", null: false
    t.bigint "address_id", null: false
    t.string "lotable_type"
    t.bigint "lotable_id"
    t.bigint "asigner_id"
    t.bigint "asignee_id"
    t.bigint "client_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["address_id"], name: "index_lots_on_address_id"
    t.index ["asignee_id"], name: "index_lots_on_asignee_id"
    t.index ["asigner_id"], name: "index_lots_on_asigner_id"
    t.index ["client_id"], name: "index_lots_on_client_id"
    t.index ["deal_type_id"], name: "index_lots_on_deal_type_id"
    t.index ["lotable_type", "lotable_id"], name: "index_lots_on_lotable"
  end

  create_table "property_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "property_types_realtor_profiles", id: false, force: :cascade do |t|
    t.bigint "realtor_profile_id", null: false
    t.bigint "property_type_id", null: false
  end

  create_table "ready_states", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "realtor_profiles", force: :cascade do |t|
    t.string "registration_number"
    t.date "employment_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "renovations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.boolean "can_read_lot"
    t.boolean "can_create_lot"
    t.boolean "can_edit_lot"
    t.boolean "can_asign"
    t.boolean "can_read_others_lots"
    t.boolean "can_read_dictionary"
    t.boolean "can_edit_dictionary"
    t.boolean "can_give_permission"
    t.boolean "can_work_with_all_property_types"
    t.boolean "can_create_role"
    t.boolean "can_approve_realtor"
    t.boolean "can_freeze_user"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "streets", force: :cascade do |t|
    t.string "name"
    t.bigint "district_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["district_id"], name: "index_streets_on_district_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.string "uid"
    t.string "provider"
    t.string "first_name"
    t.string "last_name"
    t.string "second_name"
    t.date "date_of_birth"
    t.integer "gender"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "role_id"
    t.string "profilable_type"
    t.bigint "profilable_id"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["profilable_type", "profilable_id"], name: "index_users_on_profilable"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  create_table "wall_materials", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "addresses", "streets"
  add_foreign_key "client_profiles", "countries"
  add_foreign_key "commercial_premises", "commercial_premises_kinds"
  add_foreign_key "country_side_houses", "country_side_house_kinds"
  add_foreign_key "country_side_houses", "ready_states"
  add_foreign_key "country_side_houses", "wall_materials"
  add_foreign_key "districts", "cities"
  add_foreign_key "flats", "renovations"
  add_foreign_key "flats", "wall_materials"
  add_foreign_key "lots", "addresses"
  add_foreign_key "lots", "deal_types"
  add_foreign_key "lots", "users", column: "asignee_id"
  add_foreign_key "lots", "users", column: "asigner_id"
  add_foreign_key "lots", "users", column: "client_id"
  add_foreign_key "streets", "districts"
  add_foreign_key "users", "roles"
end
