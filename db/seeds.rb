# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
require 'faker'

puts 'Creating 10 fake restaurants...'
10.times do
  restaurant = Restaurant.new(
    name:    Faker::Company.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
    phone_number: Faker::PhoneNumber
  )
  restaurant.save!
end
puts 'Finished!'
