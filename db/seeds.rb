# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all

tommy = User.create!(
  first_name: Faker::Name.name,
  last_name: Faker::Name.name,
  email: "tommy@gmail.com",
  password: "123456"
)

max = User.create!(
  first_name: Faker::Name.name,
  last_name: Faker::Name.name,
  email: "max@gmail.com",
  password: "123456"
)

saida = User.create!(
  first_name: Faker::Name.name,
  last_name: Faker::Name.name,
  email: "saida@gmail.com",
  password: "123456"
)

dylan = User.create!(
  first_name: Faker::Name.name,
  last_name: Faker::Name.name,
  email: "dylan@gmail.com",
  password: "123456"
)
