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
