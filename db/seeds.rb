# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# User.create!(name: "Example User",
#             email: "example@abc.vn",
#             password: "hung123",
#             password_confirmation: "hung123",
#             admin: true)

10.times do |n|
  name = "Example#{n +1}"
  email = "example-#{n + 1}@abc.vn"
  password = "password"
  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password,
               admin: false,
               activation_digest: nil,
               reset_digest: nil,
               reset_sent_at: nil,
               activated: true,
               activated_at: Time.zone.now)
end
