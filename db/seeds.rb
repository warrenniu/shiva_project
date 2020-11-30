# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#Deleting Games
puts "Deleting Games"
Game.destroy_all


#Deleting Users
puts "Deleting Users"
User.destroy_all

#Creating Games
puts "Creating Games"
games = [
    {
        title: "Test Game One",
        release_date: "September 1st, 2020",
        overall_rating: 4.5.to_f,
        image: "https://img.redbull.com/images/c_fill,w_1500,h_1000,g_auto/f_auto,q_auto/redbullcom/2014/05/26/1331654176608_2/the-best-game-series-open-world-games.jpg",
        description: "Game One description"
    }
]
games.each do |gameHash| 
    Game.create!(gameHash)
end

#Creating Users
puts "Creating Users"
users = [
    {
        username: "UsernameOne",
        password: "pass123",
        platform: "Playstation 5",
        top_review: true,
        avatar: "https://static3.cbrimages.com/wordpress/wp-content/uploads/2018/06/spider-man-ps4-game.jpg"
    }
]
users.each do |userHash| 
    User.create!(userHash)
end
