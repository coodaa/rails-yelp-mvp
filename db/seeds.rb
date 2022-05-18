puts "Cleaning DB of prev records"
Restaurant.delete_all

puts "Creating 100 restooos"

100.times do
  rest = Restaurant.create(
    name: Faker::Restaurant.name,
    address:  Faker::Address.full_address,
    category: "italian"
  )
  puts "Created the restaurant with the following attributes"
  puts "Name: #{rest.name}"
  puts "Address: #{rest.address}"
  puts ""
end

puts "Finished!"
