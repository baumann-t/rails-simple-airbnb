Flat.destroy_all

puts "Seeding Flats"

50.times do
  Flat.create(
    name: Faker::Ancient.god,
    address: Faker::Address.full_address,
    description: Faker::ChuckNorris.fact,
    price_per_night: rand(50..1500),
    number_of_guests: rand(2..20)
  )
end

puts "Finishing Flats seed"
