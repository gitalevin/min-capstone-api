# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!(name: "Peter", email: "peter@email.com", password: "password", admin: true)

Supplier.create!(name: "Store1", email: "store1@test.com", phone_number: "1231231234")
Supplier.create!(name: "Store2", email: "store2@test.com", phone_number: "1231231235")
Supplier.create!(name: "Store3", email: "store3@test.com", phone_number: "1231231236")

product.create!(supplier_id: 1, name: "apple", price: 2, description: "green")
product.create!(supplier_id: 2, name: "mango", price: "3", description: "juicy")
product.create!(supplier_id: 2, name: "banana", price: "5", description: "ripe")
product.create!(supplier: 1, name: "orange", price: "4", description: "citrus")
product.create!(supplier: 1, name: "melon", price: "20", description: "overripe")

Image.create!(roduct_id: 1, url: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.HC991E8MaPlWflZmT5fTwQHaGu%26pid%3DApi%26h%3D160&f=1")
Image.create!(roduct_id: 1, url: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.CWyM8RD1Xk4azY8xH9kMxwHaE8%26pid%3DApi&f=1")
Image.create!(roduct_id: 1, url: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.VM1WPotJMN0VerX6dhdyugHaE6%26pid%3DApi&f=1")
Image.create!(roduct_id: 2, url: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.QHjb4Owur5JG4v4JbVBbOAHaFk%26pid%3DApi&f=1")
Image.create!(product_id: 3, url: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.Db_BD0QNfuS20vkZJyebCgHaE8%26pid%3DApi&f=1")
Image.create!(product_id: 4, url: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.hOr6_I_hlrEyTS_vK4_ccgHaEK%26pid%3DApi&f=1")
Image.create!(product_id: 5, url: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.gEmJNe0uf8YP8-Xbev4woAHaEk%26pid%3DApi&f=1")
