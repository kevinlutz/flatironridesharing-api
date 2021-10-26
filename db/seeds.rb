puts "Seeding drivers..."

list_of_companies = ["Uber", "Lyft", "Grab", "Waze", "DiDi", "RoboTaxi"]

10.times do
  # create a driver with random data
  Driver.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    company: list_of_companies[rand(0..5)],
    years_of_experience: rand(0..15) # random number between 0 and 15
  )
end

puts "Seeding riders..."
15.times do
  # create a driver with random data
  Rider.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    age: rand(15..65) # random number between 15 and 65
  )
end

puts "Seeding trips..."
50.times do
  Trip.create(
    amount: rand(10..100),
    distance: rand(10..100),
    date: Faker::Date.between(from: '2020-01-01', to: Date.today),
    tip: Faker::Boolean.boolean,
    driver_id: Driver.all.sample.id,
    rider_id: Rider.all.sample.id
  )
end

puts "Done seeding!"