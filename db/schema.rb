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

ActiveRecord::Schema.define(version: 2023_08_16_193555) do

  create_table "catagories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "product_prices", force: :cascade do |t|
    t.float "price"
    t.datetime "date"
    t.integer "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_product_prices_on_product_id"
  end

  create_table "product_variation_counts", force: :cascade do |t|
    t.integer "count"
    t.integer "variation_style1_id"
    t.integer "variation_style2_id"
    t.integer "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_product_variation_counts_on_product_id"
    t.index ["variation_style1_id"], name: "index_product_variation_counts_on_variation_style1_id"
    t.index ["variation_style2_id"], name: "index_product_variation_counts_on_variation_style2_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "quantity_in_stock"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "purchase_orders", force: :cascade do |t|
    t.datetime "order_date"
    t.datetime "expected_delivery_date"
    t.integer "vendor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["vendor_id"], name: "index_purchase_orders_on_vendor_id"
  end

  create_table "sub_catagories", force: :cascade do |t|
    t.string "type_name"
    t.integer "catagory_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["catagory_id"], name: "index_sub_catagories_on_catagory_id"
  end

  create_table "variation_styles", force: :cascade do |t|
    t.string "type"
    t.integer "variation_type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["variation_type_id"], name: "index_variation_styles_on_variation_type_id"
  end

  create_table "variation_types", force: :cascade do |t|
    t.string "type"
    t.integer "sub_catagory_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sub_catagory_id"], name: "index_variation_types_on_sub_catagory_id"
  end

  create_table "vendors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "address"
    t.string "phone_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "product_prices", "products"
  add_foreign_key "product_variation_counts", "products"
  add_foreign_key "product_variation_counts", "variation_styles", column: "variation_style1_id"
  add_foreign_key "product_variation_counts", "variation_styles", column: "variation_style2_id"
  add_foreign_key "purchase_orders", "vendors"
  add_foreign_key "sub_catagories", "catagories"
  add_foreign_key "variation_styles", "variation_types"
  add_foreign_key "variation_types", "sub_catagories"
end
