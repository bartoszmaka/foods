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

ActiveRecord::Schema.define(version: 20180919073051) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "diabetes_measurements", force: :cascade do |t|
    t.string "insulin_type"
    t.integer "insulin_amount"
    t.integer "glucose_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "meal_id"
    t.index ["meal_id"], name: "index_diabetes_measurements_on_meal_id"
  end

  create_table "meals", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nutrition_tables", force: :cascade do |t|
    t.integer "calories"
    t.integer "carbohydrates"
    t.integer "fats"
    t.integer "proteins"
    t.bigint "product_id"
    t.index ["product_id"], name: "index_nutrition_tables_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "grams"
    t.bigint "meal_id"
    t.index ["meal_id"], name: "index_products_on_meal_id"
  end

  add_foreign_key "diabetes_measurements", "meals"
  add_foreign_key "nutrition_tables", "products"
  add_foreign_key "products", "meals"
end
