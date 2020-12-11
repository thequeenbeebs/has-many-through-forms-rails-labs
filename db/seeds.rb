# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

post1 = Post.create(title: "I Love Rails", content: "Eventually Rails will come to me easily.")

user1 = User.create(username: "thequeenbeebs", email: "bakerblaire@gmail.com")

Category.create(name: "Funny")
Category.create(name: "Sad")
Category.create(name: "Heartfelt")

Comment.create(content: "You're doing great!", post_id: post1.id, user_id: user1.id)