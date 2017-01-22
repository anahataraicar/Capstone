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

ActiveRecord::Schema.define(version: 20170114180729) do

  # These are extensions that must be enabled in order to support this database
  enable_extens ion "plpgsql"

  create_table "accepted_animals", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "accepted_species", force: :cascade do |t|
    t.integer  "sitter_id"
    t.integer  "specie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "accpeted_species", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "owners", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "phone_number"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "username"
  end

  create_table "pet_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pets", force: :cascade do |t|
    t.string   "name"
    t.string   "species"
    t.integer  "age"
    t.text     "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "gender"
    t.integer  "owner_id"
    t.string   "image"
  end

  create_table "reservations", force: :cascade do |t|
    t.string   "start_date"
    t.string   "end_date"
    t.string   "host"
    t.integer  "owner_id"
    t.integer  "pet_id"
    t.integer  "sitter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "message"
    t.float    "price"
    t.string   "start_time"
    t.string   "end_time"
    t.string   "confirmed"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "sitter_id"
    t.string   "sitter_name"
    t.text     "review"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "owner_id"
    t.string   "owner_name"
  end

  create_table "sitter_pet_types", force: :cascade do |t|
    t.integer  "pet_type_id"
    t.integer  "sitter_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "sitters", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "phone_number"
    t.string   "email"
    t.text     "bio"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "pets_accepted"
    t.integer  "reservation_id"
    t.string   "password_digest"
    t.string   "username"
    t.string   "accepted_species"
  end

  create_table "species", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
