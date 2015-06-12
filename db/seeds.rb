require 'faker'

User.create!(
              username: "eric",
              password_hash: "ilovewooter",
              email: "eric@dbc.org",
              first_name: "Eric",
              last_name: "Saxman"
              )

User.create!(
              username: "ben",
              password_hash: "ilovewooter",
              email: "ben@dbc.org",
              first_name: "Benoit",
              last_name: "Demonsant"
              )

40.times do |num|
  name = Faker::Name.name.split(" ")
  first_name = name[0]
  last_name = name[1]
  User.create!(
              username: "#{Faker::Commerce.color}#{first_name}#{num}",
              password_hash: "ilovewooter",
              first_name: first_name,
              last_name: last_name,
              email: Faker::Internet.email
              )
end

32.times do |num|
  Follow.create(fan_id: (num + 2), star_id: (1 +rand(2)) )
end

200.times do
  Woot.create!(
              body: Faker::Company.catch_phrase,
              user_id: (1 + rand(40))
              )
end

10.times do |num|
  Follow.create(fan_id: 2, star_id: (10 + num) )
end

