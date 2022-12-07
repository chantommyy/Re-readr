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
  address: "E9 5EN",
  email: "tommy@gmail.com",
  password: "123456",
)
puts "user created"
file = URI.open('https://res.cloudinary.com/duklnvqnn/image/upload/v1670263131/nvmgwdruwiadqpcfhk58.jpg')
tommy.avatar.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')
puts "image uploaded"

max = User.create!(
  first_name: 'Maxime',
  last_name: 'Sidonio',
  address: "L18 2EU",
  email: "max@gmail.com",
  password: "123456",
)
puts "user created"
file = URI.open('https://res.cloudinary.com/duklnvqnn/image/upload/v1670263142/hhjhbu5nncelgyfs5d0s.jpg')
max.avatar.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')
puts "image uploaded"

saida = User.create!(
  first_name: 'Saida',
  last_name: 'Murtazali',
  address: "PA20 9JD",
  email: "saida@gmail.com",
  password: "123456",
)
puts "user created"
file = URI.open('https://res.cloudinary.com/duklnvqnn/image/upload/v1670263123/zrpl7gqa5ngotoi8dbzf.jpg')
saida.avatar.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')
puts "image uploaded"

dylan = User.create!(
  first_name: 'Dylan',
  last_name: 'Deehan',
  address: "DN22 8DQ",
  email: "dylan@gmail.com",
  password: "123456",
)
puts "user created"
file = URI.open('https://res.cloudinary.com/duklnvqnn/image/upload/v1670263137/sdmvfvzspxd1bbzzmcpu.png')
dylan.avatar.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')
puts "image uploaded"

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

# ------------10------------ #


Book.create(name: 'Small Pleasures',
  genre: 'Thriller',
  description: 'A novel of unexpected second chances set in 1950s England.',
  author: 'Clare Chambers',
  user_id:  saida.id,
  photo:'https://m.media-amazon.com/images/I/51fxYLHkwCL.jpg'
  )

Book.create(name: 'Frankenstein: Or, the Modern Prometheus',
  genre: 'Thriller',
  description: 'Shelleys novel, Frankenstein: or, the Modern Prometheus (1818), is a combination of Gothic horror story and science fiction. The book tells the story of Victor Frankenstein, a Swiss student of natural science who creates an artificial man from pieces of corpses and brings his creature to life',
  author: 'Mary Shelley',
  user_id:  saida.id,
  photo:'https://m.media-amazon.com/images/I/81Y4bqxd96L.jpg'
  )

Book.create(name: 'The Secret Garden',
  genre: 'Romance',
  description: 'After losing her parents, young Mary Lennox is sent from India to live in her uncles gloomy mansion on the wild English moors. She is lonely and has no one to play with, but one day she learns of a secret garden somewhere in the grounds that no one is allowed to enter.',
  author: 'Frances Hodgson Burnett',
  user_id:  dylan.id,
  photo:'https://m.media-amazon.com/images/I/911NSeJbGxL.jpg'
  )

Book.create(name: 'Attack on Titan 01',
  genre: 'Manga',
  description: 'For the past century, whats left of man has hidden in a giant, three-walled city. People believe their 50-meter-high walls will protect them from the Titans, but the sudden appearance of an immense Titan is about to change everything.',
  author: 'Hajime Isayama',
  user_id:  max.id,
  photo:'https://m.media-amazon.com/images/I/81DmqnYchWL.jpg'
  )

Book.create(name: 'Easy French Phrase Book',
  genre: 'Manga',
  description: 'Over 1500 Common Phrases For Everyday Use And Travel',
  author: 'Lingo Mastery',
  user_id:  max.id,
  photo:'https://m.media-amazon.com/images/I/71xTKK68pLL.jpg'
  )

Book.create(name: 'Bored of Lunch: The Healthy Slow Cooker Book',
  genre: 'Recipes',
  description: 'Nathan Anthony, the home cook with over 1.2million followers, shares delicious and easy home-style recipes that can all be made in your slow cooker while you get on with your day.',
  author: 'Nathan Anthony ',
  user_id:  saida.id,
  photo:'https://m.media-amazon.com/images/I/81qsXzWsZcL.jpg'
  )

Book.create(name: 'Pride and Prejudice',
  genre: 'Romance',
  description: 'Pride and Prejudice follows the turbulent relationship between Elizabeth Bennet, the daughter of a country gentleman, and Fitzwilliam Darcy, a rich aristocratic landowner. They must overcome the titular sins of pride and prejudice in order to fall in love and marry.',
  author: 'Jane Austen',
  user_id:  saida.id,
  photo:'https://m.media-amazon.com/images/I/81fygAyvKML.jpg'
  )

Book.create(name: 'The Wind in the Willows',
  genre: 'Romance',
  description: 'The Wind in the Willows is a childrens novel by the British novelist Kenneth Grahame, first published in 1908. It details the story of Mole, Ratty, and Badger as they try to help Mr. Toad, after he becomes obsessed with a motorcar and gets into trouble.',
  author: 'Kenneth Grahame',
  user_id:  max.id,
  photo:'https://m.media-amazon.com/images/I/811tXAUQdsL.jpg'
  )

Book.create(name: 'Sapiens',
  genre: 'Nonfiction',
  description: 'Yuval Noah Hararis book, Sapiens traces the origins, mechanisms, and effects of what we think of as “human progress” from small bands of hunter-gatherers 100,000 years ago to the present-day global network through which our species has come to dominate the entire Earth',
  author: 'Yuval Noah Harari',
  user_id:  max.id,
  photo:'https://m.media-amazon.com/images/I/713jIoMO3UL.jpg'
  )

Book.create(name: 'Never Let Me Go',
  genre: 'Romance',
  description: 'Never Let Me Go takes place in a dystopian version of late 1990s England, where the lives of ordinary citizens are prolonged through a state-sanctioned program of human cloning. The clones, referred to as students, grow up in special institutions away from the outside world.',
  author: 'Kazuo Ishiguro',
  user_id:  max.id,
  photo:'https://m.media-amazon.com/images/I/716qHj8vH7L.jpg'
  )

# ------------20------------
