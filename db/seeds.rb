# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Word.destroy_all


user1 = User.create!(username: "junaid", password: "pwd")
user2 = User.create!(username: "ethan", password: "pwd")
user3 = User.create!(username: "keith", password: "pwd")
user4 = User.create!(username: "sahnun", password: "pwd")
user5 = User.create!(username: "dan", password: "pwd")

# word1 = Word.create!(word:"", definition: "", synonym: "", part_of_speech: "", examples: "", canvas_image: false)
word1 = Word.create!(word:"stay", definition: "stay behind", synonym: "persist,remain",
         part_of_speech: "verb", examples: "The smell stayed in the room", canvas_image: false)

userWord1 = UserWord.create!(user_id: user1.id, word_id: word1.id, activeword: false)
