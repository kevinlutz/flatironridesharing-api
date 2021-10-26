# create_table "drivers", force: :cascade do |t|
#     t.string "first_name"
#     t.string "last_name"
#     t.integer "years_of_experience"
#   end

#   create_table "riders", force: :cascade do |t|
#     t.string "first_name"
#     t.string "last_name"
#     t.integer "age"
#   end

#   create_table "trips", force: :cascade do |t|
#     t.integer "distance"
#     t.integer "amount"
#     t.boolean "tip"
#     t.string "date"
#     t.integer "rider_id"
#     t.integer "driver_id"
#   end

puts "Seeding drivers..."

list_of_companies = ["Uber", "Lyft", "Grab", "Waze", "DiDi", "RoboTaxi"]

15.times do
  # create a driver with random data
  Driver.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    company: list_of_companies[rand(0..5)],
    years_of_experience: rand(0..15) # random number between 0 and 15
  )
end
puts "Done seeding!"



puts "Seeding riders..."
15.times do
  # create a driver with random data
  Riders.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    age: rand(15..65) # random number between 0 and 15
  )
end

puts "Done seeding!"




puts "Seeding trips..."
15.times do
  Trips.create(
    amount: rand(10..100),
    distance: rand(10..100),
    date: Faker::Date.between(from: '2020-01-01', to: Date.today)
    tip: Faker::Boolean.boolean
    driver_id: Drivers.all.sample.id
    rider_id: Riders.all.sample.id
  )
end

puts "Done seeding!"