10.times do
  User.create!(
    email:Faker::Internet.unique.email,
    password: "faker",
    password_confirmation: "faker",
    first_name:Faker::Name.first_name,
    last_name:Faker::Name.last_name
  )
end

20.times do  #boardダミーデータ作成
  Board.create!(
    user:User.offset(rand(User.count)).first, #ユーザー指定
    title:Faker::Games::Pokemon.name,
    body:Faker::Games::Pokemon.move
  )
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
