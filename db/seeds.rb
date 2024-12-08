# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
10.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: "Last#{User.count}",
    email: "Test#{User.count}"+"@gmail.com",
    gender: rand(0..1),
    mobile_number: Faker::PhoneNumber.subscriber_number(length: 10)
  )
end
