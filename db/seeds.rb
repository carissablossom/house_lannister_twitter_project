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

20.times do |num|
  User.create!(
              username: "funguy#{num}",
              password_hash: "ilovewooter"
              )
end

15.times do |num|
  Follow.create(fan_id: (num + 2), star_id: 2)
end

100.times do
  Woot.create!(
              body: Faker::Company.catch_phrase,
              user_id: (1 + rand(22))
              )
end



