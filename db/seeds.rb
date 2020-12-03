# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Review.destroy_all
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
        title: "Final Fantasy VII: Remake",
        release_date: "April 10th, 2020",
        overall_rating: 4.6.to_f,
        image: "https://assets1.ignimgs.com/2020/04/06/final-fantasy-vii-remake---button-fin-1586205679705.jpg",
        description: "A spectacular reimagining of one of the most visionary games ever, FINAL FANTASY VII REMAKE rebuilds and expands the legendary RPG for today.

        The first game in the FINAL FANTASY VII REMAKE project, delivering a level of depth inconceivable for the original. Mind-blowing story, unforgettable characters, epic battles and technical excellence collide.
        
        The world has fallen under the control of the Shinra Electric Power Company, a shadowy corporation controlling the planet's very life force as mako energy.
        
        In the sprawling city of Midgar, an anti-Shinra organization calling themselves Avalanche have stepped up their resistance. Cloud Strife, a former member of Shinra's elite SOLDIER unit now turned mercenary, lends his aid to the group, unaware of the epic consequences that await him."
    },
    {
        title: "Second Game test",
        release_date: "Octover, 2nd, 2020",
        overall_rating: 4.2.to_f,
        image:"https://img.gurugamer.com/resize/740x-/2020/10/13/among-us-poster-ee5b.jpg",
        description: "Greatest game of all time"
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

##Creating reviews
puts "Creating Review "
review = [
    {
        title: "Title",
        rating: 4,
        like: 0,
        content: "something",
        playtime:  10,
        user_id: User.first.id,
        game_id: Game.first.id
    },
    {
      title: "Review 2",
        rating: 4,
        like: 0,
        content: "something",
        playtime:  10,
        user_id: User.first.id,
        game_id: Game.first.id
    }
]
    review.each do |reviewHash| 
        Review.create!(reviewHash)
end


    puts " reviews created "