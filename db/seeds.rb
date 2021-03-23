# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# password = 'chatapp21tester'
# 1.upto(5) do |i|
#   User.create(
#     username: "Tester #{i}",
#     email: "chatapp21tester#{i}@gmail.com",
#     password: password,
#     password_confirmation: password
#   )
# end


Room.create(name: 'General')
Room.create(name: 'Random')