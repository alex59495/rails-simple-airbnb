# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

(0..3).each do |f|
    name = Faker::App.name
    address = Faker::Address.street_name
    description = Faker::Lorem.sentence
    price_per_night = rand(30..200)
    number_of_guests = rand(4)
    flat = Flat.create(name: name, address: address, description: description, price_per_night: price_per_night, number_of_guests: number_of_guests)
    p "Create #{flat.id} flats"
end