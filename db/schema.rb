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

ActiveRecord::Schema.define(version: 2021_10_25_213717) do

  create_table "drivers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "years_of_experience"
    t.string "company"
  end

  create_table "riders", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
  end

  create_table "trips", force: :cascade do |t|
    t.integer "distance"
    t.integer "amount"
    t.boolean "tip"
    t.string "date"
    t.integer "rider_id"
    t.integer "driver_id"
  end

end
