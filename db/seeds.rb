# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all
Review.destroy_all

puts "Creating restaurants..."

10.times do
  name = Faker::Restaurant.name

  rest = Restaurant.create!(
    name: name,
    address: Faker::Address.full_address,
    category: Restaurant::CATEGORIES.sample,
    phone_number: Faker::PhoneNumber.phone_number_with_country_code
  )
  puts "- Created #{name}"

  puts '   Creating reviews'

  rand(1..5).times do
    Review.create!(
      content: Faker::Restaurant.review,
      rating: rand(1..5),
      restaurant: rest
    )
  end
end
puts "Finished!"
