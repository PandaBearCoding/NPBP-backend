# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Interest.destroy_all
Item.destroy_all
Favorite.destroy_all

user1 = User.create(username: "maddy", name: "madeline", location: "New York", profile_pic: "https://lh3.googleusercontent.com/proxy/d4NagMGHOQ3arQR6elqtzaEJl4LMdbaz9wRF8NSnA2RehMyR3nZRLTgeZdF-Z4Kia58dINRlfhRgAbq2AsheCjA32FZmdfKjLpaH1IcA0HcOJ6GYC2GUzxsh8JW99JL42CSL44Ru1M3JObw71h55S-lk4xiETH-IiIek")
user2 = User.create(username: "johnnie", name: "johnnie", location: "New Jersey", profile_pic: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f7/DOG-HUSKY_23JUL00.jpg/220px-DOG-HUSKY_23JUL00.jpg")
interest1 = Interest.create(category: "True Crime", avatar: "https://miro.medium.com/max/940/1*SVUOSDvBriNryyrOXpHttA.png")
item1 = Item.create(interest_id: interest1.id, title: "Ted Bundy", description: "One of America's most prolific serial killers", card_image: "https://i.insider.com/5c5c4b24eb3ce8380314b434?width=750&format=jpeg&auto=webp")
