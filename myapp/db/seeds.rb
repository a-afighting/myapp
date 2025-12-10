# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.destroy_all
Board.destroy_all

john = User.create!(email: 'john00@example.com', password: 'password')
emily = User.create!(email: 'emily00@example.com', password: 'password')



5.times do
    john.boards.create(
        tittle: Faker::Lorem.sentence(word_count: 5),
        description: Faker::Lorem.sentence(word_count: 100)
    )
end

5.times do
    emily.boards.create(
        tittle: Faker::Lorem.sentence(word_count: 5),
        description: Faker::Lorem.sentence(word_count: 100)
    )
end


user = User.first || User.create!(email: "john00@example.com", password: "password")

10.times do |i|
  Task.create!(
    title: "ダミータスク #{i + 1}",
    content: "これはダミーデータのタスクです #{i + 1}",
    due_date: Date.today + i.days,
    user: user
  )
end

puts "10個のダミータスクを作成しました"

