# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Oneil")
User.create(name: "Vannida")

Post.create(user_id: 1, post: "this app is cool")
Post.create(user_id: 2, post: "better than fb!")

Comment.create(post_id: 1, comment: "totally")
Comment.create(post_id: 2, comment: "yas")

Like.create(post_id: 1)
