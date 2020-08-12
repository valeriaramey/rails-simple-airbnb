# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts 'Creating flats...'
Flat.destroy_all
5.times do
Flat.create(name: Faker::Coffee.blend_name, address: Faker::Address.street_address, price_per_night: rand(25..100), number_of_guests: rand(1..10),
            description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: true))
end
