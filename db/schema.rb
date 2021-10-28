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

ActiveRecord::Schema.define(version: 2021_10_14_233036) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "class_spells", force: :cascade do |t|
    t.bigint "spell_id", null: false
    t.bigint "dnd_class_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dnd_class_id"], name: "index_class_spells_on_dnd_class_id"
    t.index ["spell_id"], name: "index_class_spells_on_spell_id"
  end

  create_table "dnd_classes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "grimoire_spells", force: :cascade do |t|
    t.bigint "grimoire_id", null: false
    t.bigint "spell_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["grimoire_id"], name: "index_grimoire_spells_on_grimoire_id"
    t.index ["spell_id"], name: "index_grimoire_spells_on_spell_id"
  end

  create_table "grimoires", force: :cascade do |t|
    t.string "title"
    t.boolean "edit"
    t.string "image"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_grimoires_on_user_id"
  end

  create_table "spells", force: :cascade do |t|
    t.string "name"
    t.string "level"
    t.string "school"
    t.string "components"
    t.string "ritual"
    t.string "casting_time"
    t.string "concentration"
    t.string "duration"
    t.string "range_area"
    t.string "attack_save"
    t.string "damage_effect"
    t.string "description"
    t.string "ani"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "spelltags", force: :cascade do |t|
    t.bigint "spell_id", null: false
    t.bigint "tag_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["spell_id"], name: "index_spelltags_on_spell_id"
    t.index ["tag_id"], name: "index_spelltags_on_tag_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_grimoires", force: :cascade do |t|
    t.bigint "grimoire_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["grimoire_id"], name: "index_user_grimoires_on_grimoire_id"
    t.index ["user_id"], name: "index_user_grimoires_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "class_spells", "dnd_classes"
  add_foreign_key "class_spells", "spells"
  add_foreign_key "grimoire_spells", "grimoires"
  add_foreign_key "grimoire_spells", "spells"
  add_foreign_key "grimoires", "users"
  add_foreign_key "spelltags", "spells"
  add_foreign_key "spelltags", "tags"
  add_foreign_key "user_grimoires", "grimoires"
  add_foreign_key "user_grimoires", "users"
end
