# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'open-uri'
require 'faker'
require "json"
require "rest-client"

Book.destroy_all
User.destroy_all
# the faker name gives out a first name and last name, so i split it to only give first or last name
tommy = User.create!(
  first_name: Faker::Name.name.split[0],
  last_name: Faker::Name.name.split[1],
  email: "tommy@gmail.com",
  password: "123456"
)

max = User.create!(
  first_name: Faker::Name.name.split[0],
  last_name: Faker::Name.name.split[1],
  email: "max@gmail.com",
  password: "123456"
)

saida = User.create!(
  first_name: Faker::Name.name.split[0],
  last_name: Faker::Name.name.split[1],
  email: "saida@gmail.com",
  password: "123456"
)

dylan = User.create!(
  first_name: Faker::Name.name.split[0],
  last_name: Faker::Name.name.split[1],
  email: "dylan@gmail.com",
  password: "123456"
)

response = RestClient.get("https://api2.isbndb.com/books/magic?page=1&pageSize=20&column=title", {accept: 'application/json', Authorization: '48828_4ec0d4456ee0bfe47c0b200f5528b2c6'})
repos = JSON.parse(response)
# => repos is an `Array` of `Hashes`.

books = repos["books"]

books.first(15).each do |book|
  # p book["subjects"][0]
  if book.key?("subjects") && book.key?("synopsis")
    Book.create!(
      name: book["title"],
      author: book["authors"],
      photo: book["image"],
      genre: book["subjects"][0],
      user_id: saida.id
  )
  end
  puts "#{book["title"]} created"
end
