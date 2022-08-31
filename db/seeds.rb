# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
product = Product.new(name: "apple", price: 2, image_url: "www.apple2.com", description: "green")
product.save
product = Product.new(name: "mango", price: "3", image_url: "www.mango3.com", description: "juicy")
product.save
product = Product.new(name: "banana", price: "5", image_url: "www.banana4.com", description: "ripe")
product.save
