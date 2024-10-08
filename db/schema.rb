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

ActiveRecord::Schema[7.1].define(version: 2024_09_08_190812) do
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
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "beer_flavours", force: :cascade do |t|
    t.bigint "beer_id", null: false
    t.bigint "flavour_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["beer_id"], name: "index_beer_flavours_on_beer_id"
    t.index ["flavour_id"], name: "index_beer_flavours_on_flavour_id"
  end

  create_table "beer_textures", force: :cascade do |t|
    t.bigint "beer_id", null: false
    t.bigint "texture_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["beer_id"], name: "index_beer_textures_on_beer_id"
    t.index ["texture_id"], name: "index_beer_textures_on_texture_id"
  end

  create_table "beers", force: :cascade do |t|
    t.string "name"
    t.float "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "yeast_id"
    t.bigint "color_id"
    t.bigint "taste_id"
    t.bigint "style_id"
    t.index ["color_id"], name: "index_beers_on_color_id"
    t.index ["style_id"], name: "index_beers_on_style_id"
    t.index ["taste_id"], name: "index_beers_on_taste_id"
    t.index ["yeast_id"], name: "index_beers_on_yeast_id"
  end

  create_table "colors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flavours", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "places", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "city"
    t.bigint "beer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "latitude"
    t.float "longitude"
    t.index ["beer_id"], name: "index_places_on_beer_id"
  end

  create_table "publications", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "specificities", force: :cascade do |t|
    t.bigint "spot_id", null: false
    t.boolean "snack"
    t.boolean "happy_hour"
    t.float "cheapest_beer"
    t.integer "draft_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spot_id"], name: "index_specificities_on_spot_id"
  end

  create_table "spots", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "city"
    t.integer "type"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "type_id"
    t.string "zipcode"
    t.string "website"
    t.float "latitude"
    t.float "longitude"
    t.index ["type_id"], name: "index_spots_on_type_id"
  end

  create_table "style_flavours", force: :cascade do |t|
    t.bigint "style_id", null: false
    t.bigint "flavour_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["flavour_id"], name: "index_style_flavours_on_flavour_id"
    t.index ["style_id"], name: "index_style_flavours_on_style_id"
  end

  create_table "style_textures", force: :cascade do |t|
    t.bigint "style_id", null: false
    t.bigint "texture_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["style_id"], name: "index_style_textures_on_style_id"
    t.index ["texture_id"], name: "index_style_textures_on_texture_id"
  end

  create_table "styles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "level_min"
    t.float "level_max"
    t.bigint "yeast_id"
    t.bigint "color_id"
    t.bigint "taste_id"
    t.string "origin"
    t.string "style_family"
    t.string "description"
    t.index ["color_id"], name: "index_styles_on_color_id"
    t.index ["taste_id"], name: "index_styles_on_taste_id"
    t.index ["yeast_id"], name: "index_styles_on_yeast_id"
  end

  create_table "tastes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "textures", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trackr_flavours", force: :cascade do |t|
    t.bigint "trackr_id", null: false
    t.bigint "flavour_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["flavour_id"], name: "index_trackr_flavours_on_flavour_id"
    t.index ["trackr_id"], name: "index_trackr_flavours_on_trackr_id"
  end

  create_table "trackr_textures", force: :cascade do |t|
    t.bigint "trackr_id", null: false
    t.bigint "texture_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["texture_id"], name: "index_trackr_textures_on_texture_id"
    t.index ["trackr_id"], name: "index_trackr_textures_on_trackr_id"
  end

  create_table "trackrs", force: :cascade do |t|
    t.float "level_min"
    t.float "level_max"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "taste_id"
    t.bigint "yeast_id"
    t.bigint "color_id"
    t.index ["color_id"], name: "index_trackrs_on_color_id"
    t.index ["taste_id"], name: "index_trackrs_on_taste_id"
    t.index ["yeast_id"], name: "index_trackrs_on_yeast_id"
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false, null: false
    t.boolean "cowboy", default: false, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "yeasts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "beer_flavours", "beers"
  add_foreign_key "beer_flavours", "flavours"
  add_foreign_key "beer_textures", "beers"
  add_foreign_key "beer_textures", "textures"
  add_foreign_key "beers", "colors"
  add_foreign_key "beers", "styles"
  add_foreign_key "beers", "tastes"
  add_foreign_key "beers", "yeasts"
  add_foreign_key "places", "beers"
  add_foreign_key "specificities", "spots"
  add_foreign_key "spots", "types"
  add_foreign_key "style_flavours", "flavours"
  add_foreign_key "style_flavours", "styles"
  add_foreign_key "style_textures", "styles"
  add_foreign_key "style_textures", "textures"
  add_foreign_key "styles", "colors"
  add_foreign_key "styles", "tastes"
  add_foreign_key "styles", "yeasts"
  add_foreign_key "trackr_flavours", "flavours"
  add_foreign_key "trackr_flavours", "trackrs"
  add_foreign_key "trackr_textures", "textures"
  add_foreign_key "trackr_textures", "trackrs"
  add_foreign_key "trackrs", "colors"
  add_foreign_key "trackrs", "tastes"
  add_foreign_key "trackrs", "yeasts"
end
