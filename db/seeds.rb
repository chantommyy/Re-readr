# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'open-uri'
# require 'faker'
# require "json"
# require "rest-client"
puts 'deleting'
Request.destroy_all
Book.destroy_all
User.destroy_all
puts 'creating'
# the faker name gives out a first name and last name, so i split it to only give first or last name
tommy = User.create!(
  first_name: 'Tommy',
  last_name: 'Chan',
  email: "tommy@gmail.com",
  password: "123456"
)

max = User.create!(
  first_name: 'Maxime',
  last_name: 'Sidonio',
  email: "max@gmail.com",
  password: "123456"
)

saida = User.create!(
  first_name: 'Saida',
  last_name: 'Murtazali',
  email: "saida@gmail.com",
  password: "123456"
)

dylan = User.create!(
  first_name: 'Dylan',
  last_name: 'Deehan',
  email: "dylan@gmail.com",
  password: "123456"
)

# response = RestClient.get("https://api2.isbndb.com/books/magic?page=1&pageSize=20&column=title", {accept: 'application/json', Authorization: '48828_4ec0d4456ee0bfe47c0b200f5528b2c6'})
# repos = JSON.parse(response)
# => repos is an `Array` of `Hashes`.

# books = repos["books"]

# books.first(15).each do |book|
#   # p book["subjects"][0]
#   if book.key?("subjects") && book.key?("synopsis")
#     Book.create!(
#       name: book["title"],
#       author: book["authors"][0].gsub(/[^0-9a-z ]/i, ''),
#       photo: book["image"],
#       genre: book["subjects"][0].gsub("--", " and "),
#       user_id: saida.id
#   )
#   end
#   puts "#{book["title"]} created"
# end

# books.first(15).each do |book|
#   # p book["subjects"][0]
#   if book.key?("subjects") && book.key?("synopsis")
#     Book.create!(
#       name: book["title"],
#       author: book["authors"][0].gsub(/[^0-9a-z ]/i, ''),
#       photo: book["image"],
#       genre: book["subjects"][0].gsub("--", " and "),
#       user_id: dylan.id
#   )
#   end
#   puts "#{book["title"]} created"
# end

# books.first(15).each do |book|
#   # p book["subjects"][0]
#   if book.key?("subjects") && book.key?("synopsis")
#     Book.create!(
#       name: book["title"],
#       author: book["authors"][0].gsub(/[^0-9a-z ]/i, ''),
#       photo: book["image"],
#       genre: book["subjects"][0].gsub("--", " and "),
#       user_id: max.id
#   )
#   end
#   puts "#{book["title"]} created"
# end

# books.first(15).each do |book|
#   # p book["subjects"][0]
#   if book.key?("subjects") && book.key?("synopsis")
#     Book.create!(
#       name: book["title"],
#       author: book["authors"][0].gsub(/[^0-9a-z ]/i, ''),
#       photo: book["image"],
#       genre: book["subjects"][0].gsub("--", " and "),
#       user_id: tommy.id
#   )
#   end
#   puts "#{book["title"]} created"
# end

Book.create(name: 'Harry Potter vol.7 ',
  genre: 'Fantasy',
  description: 'The Deathly Hallows is about Harry Potter and his friends finding ways to destroy Voldemort. They learn that even good contains a bit of evil, and vise versa. Even though the trio faces many difficulties, they persevere.',
  author: 'Jk.rowling',
  user_id:  tommy.id,
  photo:'https://m.media-amazon.com/images/I/51cWQIhRUTL.jpg'
  )

Book.create(name: 'The Return of the King',
  genre: 'Fantasy',
  description: 'The final confrontation between the forces of good and evil fighting for control of the future of Middle-earth. Frodo and Sam reach Mordor in their quest to destroy the One Ring, while Aragorn leads the forces of good against Sauron s evil army at the stone city of Minas Tirith.',
  author: 'J.R.R.Tolkien',
  user_id:  saida.id,
  photo:'https://m.media-amazon.com/images/P/0008376085.01._SCLZZZZZZZ_SX500_.jpg'
  )

Book.create(name: '1984 Nineteen Eighty-Four',
  genre: 'Fiction',
  description: 'The book is set in 1984 in Oceania, one of three perpetually warring totalitarian states (the other two are Eurasia and Eastasia). Oceania is governed by the all-controlling Party, which has brainwashed the population into unthinking obedience to its leader, Big Brother.',
  author: 'George Orwell',
  user_id:  max.id,
  photo:'https://m.media-amazon.com/images/I/71kxa1-0mfL.jpg'
  )

Book.create(name: 'Game of Thrones Chapt 1',
  genre: 'Fiction',
  description: 'Bran attends the execution of Gared, who ran away after Will and Waymar died but was caught and condemned as a deserter. Ned Stark, the Lord of Winterfell, performs the execution himself, using the greatsword Ice to behead Gared.',
  author: 'G.R.R Martin',
  user_id:  dylan.id,
  photo:'https://m.media-amazon.com/images/I/91dSMhdIzTL.jpg'
  )

Book.create(name: 'Normal People',
  genre: 'Fiction',
  description: 'Marianne and Connell, their secret friendship, and their on and off again relationship. They are two young people drawn to each other who drift apart at times, but always end up coming back to each other throughout their lives.',
  author: 'Sally Rooney',
  user_id:  tommy.id,
  photo:'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1571423190i/41057294.jpg'
  )

Book.create(name: 'It Ends With Us',
  genre: 'Romance',
  description: 'ollows a girl named Lily who has just moved and is ready to start her life after college. Lily then meets a guy named Ryle and she falls for him. As she is developing feelings for Ryle, Atlas, her first love, reappears and challenges the relationship between Lily and Ryle.',
  author: 'Colleen Hoover',
  user_id:  saida.id,
  photo:'https://m.media-amazon.com/images/P/1501110365.01._SCLZZZZZZZ_SX500_.jpg'
  )

Book.create(name: 'The Picture of Dorian Gray',
  genre: '	Philosophical fiction',
  description: 'A corrupt young man somehow keeps his youthful beauty, but a special painting gradually reveals his inner ugliness to all. In 1886, in Victorian London, the corrupt Lord Henry Wotton (George Sanders) meets the pure Dorian Gray (Hurd Hatfield) posing for talented painter Basil Hallward (Lowell Gilmore).',
  author: '	Oscar Wilde',
  user_id:  max.id,
  photo:'https://m.media-amazon.com/images/P/0141442468.01._SCLZZZZZZZ_SX500_.jpg'
  )

Book.create(name: 'All This Time',
  genre: 'Fiction',
  description: 'Kyle and Kimberly have been the perfect couple all through high school, but when Kimberly breaks up with him on the night of their graduation party, Kyles entire world upends—literally. Their car crashes and when he awakes, he has a brain injury. Kimberly is dead. And no one in his life could possibly understand.',
  author: 'Rachael Lippincott',
  user_id:  saida.id,
  photo:'https://m.media-amazon.com/images/I/91b1nyVl73L.jpg'
  )

Book.create(name: 'The Wizard of Oz',
  genre: 'Fantasy',
  description: 'Young Kansas farm girl Dorothy Gale is taken by a tornado to the marvelous Land of Oz. Together with her strange new friends, she will free the people of Oz from the rule of wicked witches and false wizards in her search for a way home.',
  author: 'L. Frank Baum',
  user_id:  max.id,
  photo:'https://m.media-amazon.com/images/I/913fUlWON3L.jpg'
  )

Book.create(name: 'The illness Lesson',
  genre: 'Romance',
  description: 'Changes to Female Education Pioneered by Women in 19th Century America. The plot of The Illness Lesson revolves around the establishment of a Massachusetts school for girls in 1871 by a man with ideas about female education that are progressive and experimental for this era.',
  author: 'Clare Beams',
  user_id:  tommy.id,
  photo:'https://img.buzzfeed.com/buzzfeed-static/static/2020-12/21/1/asset/6583d86d6f96/sub-buzz-7640-1608513353-20.jpg'
  )
