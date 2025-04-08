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

ActiveRecord::Schema[8.1].define(version: 2025_04_08_073015) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.string "name", null: false
    t.bigint "record_id", null: false
    t.string "record_type", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.string "content_type"
    t.datetime "created_at", null: false
    t.string "filename", null: false
    t.string "key", null: false
    t.text "metadata"
    t.string "service_name", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "categories", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.datetime "updated_at", null: false
  end

  create_table "category_translations", force: :cascade do |t|
    t.bigint "category_id", null: false
    t.datetime "created_at", null: false
    t.string "locale", null: false
    t.string "name"
    t.datetime "updated_at", null: false
    t.index ["category_id", "locale"], name: "index_category_translations_on_category_id_and_locale", unique: true
    t.index ["locale"], name: "index_category_translations_on_locale"
  end

  create_table "documents", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "format"
    t.string "language"
    t.string "title"
    t.datetime "updated_at", null: false
    t.bigint "variant_id", null: false
    t.index ["variant_id"], name: "index_documents_on_variant_id"
  end

  create_table "mobility_string_translations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "key", null: false
    t.string "locale", null: false
    t.bigint "translatable_id"
    t.string "translatable_type"
    t.datetime "updated_at", null: false
    t.string "value"
    t.index ["translatable_id", "translatable_type", "key"], name: "index_mobility_string_translations_on_translatable_attribute"
    t.index ["translatable_id", "translatable_type", "locale", "key"], name: "index_mobility_string_translations_on_keys", unique: true
    t.index ["translatable_type", "key", "value", "locale"], name: "index_mobility_string_translations_on_query_keys"
  end

  create_table "mobility_text_translations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "key", null: false
    t.string "locale", null: false
    t.bigint "translatable_id"
    t.string "translatable_type"
    t.datetime "updated_at", null: false
    t.text "value"
    t.index ["translatable_id", "translatable_type", "key"], name: "index_mobility_text_translations_on_translatable_attribute"
    t.index ["translatable_id", "translatable_type", "locale", "key"], name: "index_mobility_text_translations_on_keys", unique: true
  end

  create_table "product_translations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.text "description"
    t.string "locale", null: false
    t.string "name"
    t.bigint "product_id", null: false
    t.datetime "updated_at", null: false
    t.index ["locale"], name: "index_product_translations_on_locale"
    t.index ["product_id", "locale"], name: "index_product_translations_on_product_id_and_locale", unique: true
  end

  create_table "products", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.text "description"
    t.string "name"
    t.bigint "subsubcategory_id", null: false
    t.datetime "updated_at", null: false
    t.index ["subsubcategory_id"], name: "index_products_on_subsubcategory_id"
  end

  create_table "specification_translations", force: :cascade do |t|
    t.string "certification_note"
    t.datetime "created_at", null: false
    t.string "locale", null: false
    t.string "set_point_range"
    t.bigint "specification_id", null: false
    t.datetime "updated_at", null: false
    t.index ["locale"], name: "index_specification_translations_on_locale"
    t.index ["specification_id", "locale"], name: "index_7015403f99ca6811da1c3998e6de0d81ccda9cab", unique: true
  end

  create_table "specifications", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.decimal "max_ap"
    t.decimal "max_at"
    t.decimal "max_dt"
    t.decimal "max_op"
    t.decimal "max_ot"
    t.decimal "min_ot"
    t.jsonb "specs"
    t.datetime "updated_at", null: false
    t.bigint "variant_id", null: false
    t.index ["specs"], name: "index_specifications_on_specs", using: :gin
    t.index ["variant_id"], name: "index_specifications_on_variant_id"
  end

  create_table "subcategories", force: :cascade do |t|
    t.bigint "category_id", null: false
    t.datetime "created_at", null: false
    t.string "name"
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_subcategories_on_category_id"
  end

  create_table "subcategory_translations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "locale", null: false
    t.string "name"
    t.bigint "subcategory_id", null: false
    t.datetime "updated_at", null: false
    t.index ["locale"], name: "index_subcategory_translations_on_locale"
    t.index ["subcategory_id", "locale"], name: "index_subcategory_translations_on_subcategory_id_and_locale", unique: true
  end

  create_table "subsubcategories", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.bigint "subcategory_id", null: false
    t.datetime "updated_at", null: false
    t.index ["subcategory_id"], name: "index_subsubcategories_on_subcategory_id"
  end

  create_table "subsubcategory_translations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "locale", null: false
    t.string "name"
    t.bigint "subsubcategory_id", null: false
    t.datetime "updated_at", null: false
    t.index ["locale"], name: "index_subsubcategory_translations_on_locale"
    t.index ["subsubcategory_id", "locale"], name: "index_b51a721a93d04d29757c1ac80e6ab3e09adf1c69", unique: true
  end

  create_table "variants", force: :cascade do |t|
    t.string "body_material"
    t.datetime "created_at", null: false
    t.bigint "product_id", null: false
    t.string "size_mm", default: [], null: false, array: true
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_variants_on_product_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "category_translations", "categories"
  add_foreign_key "documents", "variants"
  add_foreign_key "product_translations", "products"
  add_foreign_key "products", "subsubcategories"
  add_foreign_key "specification_translations", "specifications"
  add_foreign_key "specifications", "variants"
  add_foreign_key "subcategories", "categories"
  add_foreign_key "subcategory_translations", "subcategories"
  add_foreign_key "subsubcategories", "subcategories"
  add_foreign_key "subsubcategory_translations", "subsubcategories"
  add_foreign_key "variants", "products"
end
