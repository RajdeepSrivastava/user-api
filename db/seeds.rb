# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create([
    {
        first_name: "Harsh",
        last_name: "Srivastava",
        email: "harshmymail36@gmail.com",
        address: "Delhi",
        zipcode: 201011,
        password: "Ongraph1"
    },
    {
        first_name: "Reshav",
        last_name: "Chaudhary",
        email: "reshavmymail36@gmail.com",
        address: "Noida",
        zipcode: 201012,
        password: "Ongraph2"
    }
])

user1 = User.find_by(email: "rajmymail36@gmail.com")
user2 = User.find_by(email: "harshmymail36@gmail.com")
user3 = User.find_by(email: "reshavmymail36@gmail.com")

post1 = Post.create(
  title: "Shopping",
  description: "Buying a Jeans",
  user: user1
)

post2 = Post.create(
  title: "Travelling",
  description: "Going to Manali",
  user: user2
)

post3 = Post.create(
    title: "Foodie",
    description: "Eating chocolates",
    user: user3
)

like1 = Like.create(user: user1, post: post2)
like2 = Like.create(user: user2, post: post1) 
like3 = Like.create(user: user3, post: post3)
  