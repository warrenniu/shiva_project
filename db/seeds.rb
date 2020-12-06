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
        platform: "Playstation",
        image: "https://assets1.ignimgs.com/2020/04/06/final-fantasy-vii-remake---button-fin-1586205679705.jpg",
        description: "A spectacular reimagining of one of the most visionary games ever, FINAL FANTASY VII REMAKE rebuilds and expands the legendary RPG for today. 
        
        The world has fallen under the control of the Shinra Electric Power Company, a shadowy corporation controlling the planet's very life force as mako energy.
        
        In the sprawling city of Midgar, an anti-Shinra organization calling themselves Avalanche have stepped up their resistance. Cloud Strife, a former member of Shinra's elite SOLDIER unit now turned mercenary, lends his aid to the group, unaware of the epic consequences that await him."
    },
    {
        title: "Ghost of Tsushima",
        release_date: "July 17th, 2020",
        platform: "Playstation",
        image:"https://image.api.playstation.com/vulcan/ap/rnd/202010/0222/niMUubpU9y1PxNvYmDfb8QFD.png",
        description: "It’s the late 13th century, and the Mongol empire has laid waste to entire nations in its campaign to conquer the East. Tsushima Island is all that stands between mainland Japan and a massive Mongol invasion. As the island burns in the wake of the first wave of the Mongol assault, samurai warrior Jin Sakai resolves to do whatever it takes to protect his people and reclaim his home."
    },
    {
        title: "Valorant",
        release_date: "June 2nd, 2020",
        platform: "PC",
        image:"https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fmedia.vandal.net%2Fi%2F1200x630%2F4-2020%2F20204271333472_2.jpg&f=1&nofb=1",
        description: "Blend your style and experience on a global, competitive stage. You have 13 rounds to attack and defend your side using sharp gunplay and tactical abilities. And, with one life per-round, you'll need to think faster than your opponent if you want to survive. Take on foes across Competitive and Unranked modes as well as Deathmatch and Spike Rush."
    },
    {
        title: "Fortnite",
        release_date: "June 25th, 2017",
        platform: "PC",
        image:"https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.EM14ofT51dKlUaJ5HMDB5gHaNK%26pid%3DApi&f=1",
        description: "Fortnite is at heart a battle royale game, developed by Epic Games. In it, players drop into a map, either on their own or with a team, alongside 99 other players. After landing, it’s a mad dash to pick up as many weapons and items as possible, all while working your way toward the center of the map. Whoever is the last player standing wins the match."
    },
    {
        title: "Forza Horizon 4",
        release_date: "September 28th, 2018",
        platform: "Xbox",
        image:"https://compass-ssl.xbox.com/assets/6a/31/6a31393d-b0cc-4833-8e82-fd3a2c6b6e19.jpg?n=FH4_GLP-Page-Hero-1084_1920x1080_02.jpg",
        description: "Dynamic seasons change everything at the world’s greatest automotive festival. Go it alone or team up with others to explore beautiful and historic Britain in a shared open world. Collect, modify and drive over 450 cars. Race, stunt, create and explore – choose your own path to become a Horizon Superstar."
    },
    {
        title: "God of War",
        release_date: "April 20th, 2018",
        platform: "Playstation",
        image:"https://m.media-amazon.com/images/I/51Gr9-eTgLL.jpg",
        description: "Living as a man outside the shadow of the gods, Kratos must adapt to unfamiliar lands, unexpected threats, and a second chance at being a father. Together with his son Atreus, the pair will venture into the brutal Norse wilds and fight to fulfill a deeply personal quest."
    },
    {
        title: "Apex Legends",
        release_date: "February 4th, 2019",
        platform: "PC",
        image:"https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fimgix.ranker.com%2Fuser_node_img%2F4269%2F85376617%2Foriginal%2Fapex-legends-photo-u1%3Ffm%3Dpjpg%26q%3D80&f=1&nofb=1",
        description: "Conquer with character in Apex Legends, a free-to-play* Battle Royale shooter where legendary characters with powerful abilities team up to battle for fame & fortune on the fringes of the Frontier."
    },
    {
        title: "Call of Duty: Modern Warfare",
        release_date: "August 23rd, 2019",
        platform: "Xbox",
        image:"https://image.api.playstation.com/cdn/UP0002/CUSA08829_00/xmKUnAOenEAKspB3FlOg80aQZfEoCYcE.png",
        description: "The stakes have never been higher as players take on the role of lethal Tier One operators in a heart-racing saga that will affect the global balance of power. Call of Duty: Modern Warfare engulfs fans in an incredibly raw, gritty, provocative narrative that brings unrivaled intensity and shines a light on the changing nature of modern war."
    },
    {
        title: "Red Dead Redemption II",
        release_date: "October 26th, 2018",
        platform: "Playstation",
        image:"https://s1.gaming-cdn.com/images/products/5679/orig/red-dead-redemption-2-standard-edition-cover.jpg",
        description: "Arthur Morgan and the Van der Linde gang are outlaws on the run. With federal agents and the best bounty hunters in the nation massing on their heels, the gang must rob, steal and fight their way across the rugged heartland of America in order to survive. As deepening internal divisions threaten to tear the gang apart, Arthur must make a choice between his own ideals and loyalty to the gang who raised him."
    },
    {
        title: "FIFA 21",
        release_date: "October 6th, 2020",
        platform: "PC",
        image:"https://upload.wikimedia.org/wikipedia/en/thumb/b/bb/FIFA_21_Standard_Edition_Cover.jpg/220px-FIFA_21_Standard_Edition_Cover.jpg",
        description: "Win as One in EA SPORTS FIFA 21, powered by Frostbite. Whether it's on the streets or in the stadium, FIFA 21 has more ways to play than ever before - including the UEFA Champions League and CONMEBOL Libertadores."
    },
    {
        title: "Animal Crossing: New Horizons",
        release_date: "March 20th, 2020",
        platform: "Switch",
        image:"https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fmypotatogames.com%2Fwp-content%2Fuploads%2F2019%2F06%2FAnimal_crossing_new_horizons_wallpaper_3.png&f=1&nofb=1",
        description: "Escape to a deserted island and create your own paradise as you explore, create, and customize in the Animal Crossing: New Horizons game. Your island getaway has a wealth of natural resources that can be used to craft everything from tools to creature comforts. You can hunt down insects at the crack of dawn, decorate your paradise throughout the day, or enjoy sunset on the beach while fishing in the ocean. The time of day and season match real life, so each day on your island is a chance to check in and find new surprises all year round."
    },
    {
        title: "The Legend of Zelda: Breath of the Wild",
        release_date: "March 3rd, 2017",
        platform: "Switch",
        image:"https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fen%2Fc%2Fc6%2FThe_Legend_of_Zelda_Breath_of_the_Wild.jpg&f=1&nofb=1",
        description: "Step into a world of discovery, exploration, and adventure in The Legend of Zelda: Breath of the Wild, a boundary-breaking new game in the acclaimed series. Travel across vast fields, through forests, and to mountain peaks as you discover what has become of the kingdom of Hyrule in this stunning Open-Air Adventure. Now on Nintendo Switch, your journey is freer and more open than ever. Take your system anywhere, and adventure as Link any way you like."
    },
    {
        title: "Super Smash Bros, Ultimate",
        release_date: "December 7th, 2018",
        platform: "Switch",
        image:"https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fcdn02.nintendo-europe.com%2Fmedia%2Fimages%2F11_square_images%2Fgames_18%2Fnintendo_switch_5%2FSQ_NSwitch_SuperSmashBrosUltimate_02.jpg&f=1&nofb=1",
        description: "Gaming icons clash in the ultimate brawl you can play anytime, anywhere Smash rivals off the stage as new characters Simon Belmont and King K. Rool join Inkling, Ridley, and every fighter in Super Smash Bros. history. Enjoy enhanced speed and combat at new stages based on the Castlevania series, Super Mario Odyssey, and more"
    },
    {
        title: "The Last of Us Part II",
        release_date: "June 19th, 2020",
        platform: "Playstation",
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
        rating: 2,
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