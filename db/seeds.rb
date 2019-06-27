# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Person.destroy_all
Connection.destroy_all
Continent.destroy_all
Country.destroy_all
Event.destroy_all
Place.destroy_all
Type.destroy_all
Subscription.destroy_all
Cp.destroy_all
Ep.destroy_all
Et.destroy_all
Tsu.destroy_all

user1 = User.create!(name: "Sylwia", username: "sylwia", password: "sylwia", email: "sylwia@gmail.com", zip: 11237)
user2 = User.create!(name: "Joel", username: "jo", password: "123456", email: "jo@gmail.com", zip: 11385)
