# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
@users = 20.times do
  User.create(name: Faker::Name.name, email: Faker::Internet.email)
end

@dogs = 20.times do
  Dog.create(name: Faker::Lorem.word, age: Faker::Number.digit, gender: 'male', user_id: Faker::Number.digit)
end