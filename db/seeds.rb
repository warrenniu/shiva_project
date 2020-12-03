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
        
        The world has fallen under the control of the Shinra Electric Power Company, a shadowy corporation controlling the planet's very life force as mako energy.
        
        In the sprawling city of Midgar, an anti-Shinra organization calling themselves Avalanche have stepped up their resistance. Cloud Strife, a former member of Shinra's elite SOLDIER unit now turned mercenary, lends his aid to the group, unaware of the epic consequences that await him."
    },
    {
        title: "Ghost of Tsushima",
        release_date: "July 17th, 2020",
        overall_rating: 4.9.to_f,
        image:"https://image.api.playstation.com/vulcan/ap/rnd/202010/0222/niMUubpU9y1PxNvYmDfb8QFD.png",
        description: "It’s the late 13th century, and the Mongol empire has laid waste to entire nations in its campaign to conquer the East. Tsushima Island is all that stands between mainland Japan and a massive Mongol invasion. As the island burns in the wake of the first wave of the Mongol assault, samurai warrior Jin Sakai resolves to do whatever it takes to protect his people and reclaim his home."
    },
    {
        title: "Forza Horizon 4",
        release_date: "September 28th, 2018",
        overall_rating: 4.8.to_f,
        image:"https://compass-ssl.xbox.com/assets/6a/31/6a31393d-b0cc-4833-8e82-fd3a2c6b6e19.jpg?n=FH4_GLP-Page-Hero-1084_1920x1080_02.jpg",
        description: "Dynamic seasons change everything at the world’s greatest automotive festival. Go it alone or team up with others to explore beautiful and historic Britain in a shared open world. Collect, modify and drive over 450 cars. Race, stunt, create and explore – choose your own path to become a Horizon Superstar."
    },
    {
        title: "God of War",
        release_date: "April 20th, 2018",
        overall_rating: 4.8.to_f,
        image:"https://m.media-amazon.com/images/I/51Gr9-eTgLL.jpg",
        description: "Living as a man outside the shadow of the gods, Kratos must adapt to unfamiliar lands, unexpected threats, and a second chance at being a father. Together with his son Atreus, the pair will venture into the brutal Norse wilds and fight to fulfill a deeply personal quest."
    },
    {
        title: "Call of Duty: Modern Warfare",
        release_date: "August 23rd, 2019",
        overall_rating: 4.2.to_f,
        image:"https://image.api.playstation.com/cdn/UP0002/CUSA08829_00/xmKUnAOenEAKspB3FlOg80aQZfEoCYcE.png",
        description: "The stakes have never been higher as players take on the role of lethal Tier One operators in a heart-racing saga that will affect the global balance of power. Call of Duty: Modern Warfare engulfs fans in an incredibly raw, gritty, provocative narrative that brings unrivaled intensity and shines a light on the changing nature of modern war."
    },
    {
        title: "Red Dead Redemption II",
        release_date: "October 26th, 2018",
        overall_rating: 4.8.to_f,
        image:"https://s1.gaming-cdn.com/images/products/5679/orig/red-dead-redemption-2-standard-edition-cover.jpg",
        description: "Arthur Morgan and the Van der Linde gang are outlaws on the run. With federal agents and the best bounty hunters in the nation massing on their heels, the gang must rob, steal and fight their way across the rugged heartland of America in order to survive. As deepening internal divisions threaten to tear the gang apart, Arthur must make a choice between his own ideals and loyalty to the gang who raised him."
    },
    {
        title: "FIFA 21",
        release_date: "October 6th, 2020",
        overall_rating: 3.2.to_f,
        image:"https://upload.wikimedia.org/wikipedia/en/thumb/b/bb/FIFA_21_Standard_Edition_Cover.jpg/220px-FIFA_21_Standard_Edition_Cover.jpg",
        description: "Win as One in EA SPORTS FIFA 21, powered by Frostbite. Whether it's on the streets or in the stadium, FIFA 21 has more ways to play than ever before - including the UEFA Champions League and CONMEBOL Libertadores."
    },
    {
        title: "The Last of Us Part II",
        release_date: "June 19th, 2020",
        overall_rating: 3.5.to_f,
        image:"https://image.api.playstation.com/vulcan/img/rnd/202010/2618/5LbTaX8QJWSLq1x45rSZ2oyj.png",
        description: "Five years after their dangerous journey across the post-pandemic United States, Ellie and Joel have settled down in Jackson, Wyoming. Living amongst a thriving community of survivors has allowed them peace and stability, despite the constant threat of the infected and other, more desperate survivors. When a violent event disrupts thatpeace, Ellie embarks on a relentless journey to carry out justice and find closure. As she hunts those responsible one by one, she is confronted with the devastating physical and emotional repercussions of her actions."
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