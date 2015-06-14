# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# ruby encoding: utf-8
User.create(email: "admin@gmail.com", password: "incorrect" , password_confirmation: "incorrect", firstname: "Miguel", lastname: "Herrera", admin: true)
User.create(email: "user1@netguru.com", password: "incorrect" , password_confirmation: "incorrect", firstname: "Raul", lastname: "Hernandez", admin: false)
User.create(email: "user2@netguru.com", password: "incorrect" , password_confirmation: "incorrect", firstname: "Juan", lastname: "Lopez", admin: false)
User.create(email: "user3@netguru.com", password: "incorrect" , password_confirmation: "incorrect", firstname: "Lucy", lastname: "Smith", admin: false)
User.create(email: "user4@netguru.com", password: "incorrect" , password_confirmation: "incorrect", firstname: "Johnny", lastname: "Walker", admin: true)
User.create(email: "user5@netguru.com", password: "incorrect" , password_confirmation: "incorrect", firstname: "Michael", lastname: "Dell", admin: false)


Category.create(id: 1, name: "Computers and Electronics")

Product.create(title: "Toshiba Satellite", description: "Laptop Toshiba Satellite i7 HDD: 250GB RAM: 4GB", price: 450.00, category_id: 1, user_id: 6)
Product.create(title: "Samsung LED TV", description: "TV screen Samsung LED black smartTV", price: 245.00, category_id: 1, user_id: 5)
Product.create(title: "LG L5", description: "Cellphone Lg e615f Android 4.2 Unlocked", price: 149.00, category_id: 1, user_id: 2)
Product.create(title: "Dell e6510", description: "Laptop Dell e6510 14in i5 backlight keyboard ", price: 300.00, category_id: 1, user_id: 5)
Product.create(title: "HP Desktop Computer", description: "Desktop Computer HP Windows 7 Pentium 4 80GB Hdd", price: 150.00, category_id: 1, user_id: 3)

Review.create(content: "Very good product!", rating: 5, product_id: 1, user_id: 5)
Review.create(content: "Good product and quality", rating: 4, product_id: 3, user_id: 2)
Review.create(content: "Excelent product!", rating: 5, product_id: 1, user_id: 6)
Review.create(content: "Very fast computer and nice design", rating: 5, product_id: 4, user_id: 6)
Review.create(content: "I wouldnt recomend this", rating: 2, product_id: 5, user_id: 3)
Review.create(content: "It is worth your money", rating: 4, product_id: 5, user_id: 2)
Review.create(content: "I would say this is a good product", rating: 4, product_id: 3, user_id: 6)
