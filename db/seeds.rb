# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(first_name: "Jack", last_name: "Sprat", email: "jacksprat@gmail.com")
user2 = User.create(first_name: "Helga", last_name: "Swedenborg", email: "helgaswedenborg@gmail.com")
user3 = User.create(first_name: "Dirk", last_name: "Diggler", email: "dirkdiggler@gmail.com")
