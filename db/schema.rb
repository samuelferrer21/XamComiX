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

ActiveRecord::Schema[7.0].define(version: 2023_10_11_154245) do
  create_table "comics", force: :cascade do |t|
    t.string "title"
    t.date "release_date"
    t.float "cover_price"
    t.integer "publisher_id", null: false
    t.integer "writer_id", null: false
    t.integer "edition_id", null: false
    t.integer "format_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["edition_id"], name: "index_comics_on_edition_id"
    t.index ["format_id"], name: "index_comics_on_format_id"
    t.index ["publisher_id"], name: "index_comics_on_publisher_id"
    t.index ["writer_id"], name: "index_comics_on_writer_id"
  end

  create_table "editions", force: :cascade do |t|
    t.string "edition"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "formats", force: :cascade do |t|
    t.string "format"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "publishers", force: :cascade do |t|
    t.string "name"
    t.integer "founded"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "writers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "comics", "editions"
  add_foreign_key "comics", "formats"
  add_foreign_key "comics", "publishers"
  add_foreign_key "comics", "writers"
end
