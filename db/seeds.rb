# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# test by zhangfei and peng
User.create!(
  name: "admin",
  email: "admin@test.com",
  password: 'password',
  role: Faker::Number.between(1, 4),
  sex: ['male', 'female'].sample,
  phonenumber: Faker::PhoneNumber.phone_number,
  status: Faker::Company.profession,
  admin: true
  )

User.create(
  name: "robot",
  email: "robot@test.com",
  password: 'password',
  role: Faker::Number.between(1, 4),
  sex: ['male', 'female'].sample,
  phonenumber: Faker::PhoneNumber.phone_number,
  status: Faker::Company.profession
  )


(1..100).each do |index|
  User.create(
      name: "user#{index}",
      email: "user#{index}@test.com",
      password: 'password',
      role: Faker::Number.between(1, 4),
      sex: ['male', 'female'].sample,
      phonenumber: Faker::PhoneNumber.phone_number,
      status: Faker::Company.profession
  )
end

#User.first.friendships.create(:friend_id => 2)
#User.first.friendships.create(:friend_id => 3)


  