# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# 10.times do
#   Restaurant.create(name: Faker::Beer.name, adress: Faker::Beer.hop)
# end
Restaurant.destroy_all

Restaurant.create(name: "america",
                  address: "Av Paulista",
                  phone_number: "11234321",
                  category: "French")

Restaurant.create(name: "Braz",
                  address: "Av Faria Lima",
                  phone_number: "11234321",
                  category: "Italian")

Restaurant.create(name: "Angelica",
                  address: "5th Ave",
                  phone_number: "11234321",
                  category: "chinese")
