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

ActiveRecord::Schema[7.1].define(version: 2026_06_21_013734) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blog_categories", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.integer "position"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "blog_posts", force: :cascade do |t|
    t.bigint "blog_category_id", null: false
    t.string "title"
    t.string "slug"
    t.text "excerpt"
    t.text "content"
    t.integer "status"
    t.string "reading_time"
    t.datetime "published_at"
    t.integer "position"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["blog_category_id"], name: "index_blog_posts_on_blog_category_id"
  end

  create_table "contact_leads", force: :cascade do |t|
    t.string "name"
    t.string "company"
    t.string "email"
    t.string "phone"
    t.string "interest"
    t.text "message"
    t.integer "status"
    t.string "source"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plans", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.text "description"
    t.integer "price_cents"
    t.boolean "highlighted"
    t.jsonb "features"
    t.integer "position"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "solutions", force: :cascade do |t|
    t.string "title"
    t.string "slug"
    t.text "summary"
    t.text "description"
    t.string "icon"
    t.integer "position"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stack_items", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.string "category"
    t.text "description"
    t.string "examples"
    t.integer "position"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "blog_posts", "blog_categories"
end
