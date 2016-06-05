#HASH

def game_hash 
   teams_hash = 
     {
       home: 
       {
         team_name: "Brooklyn Nets",
         colors: "Black, White",
         players: 
         {
          "Alan Anderson" => 
           {
             number: 0,
             shoe: 16,
             points: 22,
             rebounds: 12,
             assists: 12,
             steals: 3,
             blocks: 1,
             slam_dunks: 1
           },
           "Reggie Evans" => 
           {
             number: 30,
             shoe: 14,
             points: 12,
             rebounds: 12,
             assists: 12,
             steals: 12,
             blocks: 12,
             slam_dunks: 7 
           },
           "Brook Lopez" => 
           {
             number: 11,
             shoe: 17,
             points: 17,
             rebounds: 19,
             assists: 10,
             steals: 3,
             blocks: 1,
             slam_dunks: 15  
           },
           "Mason Plumlee" => 
           {
             number: 1,
             shoe: 19,
             points: 26,
             rebounds: 12,
             assists: 6,
             steals: 3,
             blocks: 8,
             slam_dunks: 5  
           },
           "Jason Terry" => 
           {
             number: 31,
             shoe: 15,
             points: 19,
             rebounds: 2,
             assists: 2,
             steals: 4,
             blocks: 11,
             slam_dunks: 1
           }
         }
       },
       away: 
       {
         team_name: "Charlotte Hornets",
         colors: "Turquoise, Purple",
         players: 
         {
           "Jeff Adrien" => 
           {
             number: 4,
             shoe: 18,
             points: 10,
             rebounds: 1,
             assists: 1, 
             steals: 2,
             blocks: 7,
             slam_dunks: 2,
           },
           "Bismak Biyombo" =>
           {
             number: 0,
             shoe: 16,
             points: 12,
             rebounds: 4,
             assists: 7, 
             steals: 7,
             blocks: 15,
             slam_dunks: 10,
           },
           "DeSagna Diop" =>
           {
             number: 2,
             shoe: 14,
             points: 24,
             rebounds: 12,
             assists: 12, 
             steals: 4,
             blocks: 5,
             slam_dunks: 5,
           },
           "Ben Gordon" =>
           {
             number: 8,
             shoe: 15,
             points: 33,
             rebounds: 3,
             assists: 2, 
             steals: 1,
             blocks: 1,
             slam_dunks: 0,
           },
           "Brendan Haywood" =>
           {
             number: 33,
             shoe: 15,
             points: 6,
             rebounds: 12,
             assists: 12, 
             steals: 22,
             blocks: 5,
             slam_dunks: 12,
           }
         }
       }
    }
 end

#BINDING PRY TEST (NOT WORKING)

#  def good_practices #this isn't working...
#   game_hash.each do |location, team_data|
#     #are you ABSOLUTELY SURE what 'location' and 'team data' are? use binding.pry to find out!
#     binding.pry
#       team_data.each do |attribute, data|
#         #are you ABSOLUTELY SURE what 'attribute' and 'team data' are? use binding.pry to find out!
#         binding.pry
 
#         #what is 'data' at each loop through out .each block? when will the following line of code work and when will it break?
#         data.each do |data_item|
#             binding.pry
#       end
#     end
#   end
# end

# good_practices

 #METHODS
 #you can think of the game_hash like a variable that points to our hash and 
 #operate on it just as you would with hashes in previous lessons

 def num_points_scored(players_name)
  game_hash.each do |court, info| #for every team
    info[:players].each do |names, stats| #for all the players (accessed through basic info)
      if names == players_name #check if the name matches the given name
        return stats[:points] #return the point stat for that player
      end
    end
  end
end

 def num_points_scored(players_name)
  game_hash.each do |court, info| #for every team
    info[:players].each do |names, stats| #for all the players (accessed through basic info)
      if names == players_name #check if the name matches the given name
        return stats[:points] #return the point stat for that player
      end
    end
  end
end

 def shoe_size(players_name)
  game_hash.each do |court, info| #for every team
    info[:players].each do |names, stats| #for all the players (accessed through basic info)
      if names == players_name #check if the name matches the given name
        return stats[:shoe] #return the shoe size stat for that player
      end
    end
  end
end

 def team_colors(teams_name) #this one got confusing
  game_hash.each do |court, info| #for every team
    if game_hash[court][:team_name] == teams_name #check if team name is matching
      return game_hash[court][:colors].split(", ") #return their color as an array
    end
  end
end

def team_names 
  teams = [] #or use collect?? eh
  game_hash.each do |court, info| 
    teams << info[:team_name] #add on team names
  end
  teams #return it!! 
end

 def player_numbers(teams_name)
  teams_numbers = []
  game_hash.each do |court, info| #for every team
    if game_hash[court][:team_name] == teams_name
      info[:players].each do |names, stats|
          teams_numbers << stats[:number]
        end
      end
    end
    return teams_numbers
  end

  def player_stats(players_name)
    game_hash.each do |court, info| #for every team
    info[:players].each do |names, stats| #for all the players (accessed through basic info)
      if names == players_name
        return stats #easy
      end
    end
  end
end

def big_shoe_rebounds
  #find player with largest shoe size
  big_shoe = 0
  rebounds = 0
  game_hash.each do |court, info| #for each team
    info[:players].each do |stats| #for each player look at their stats
      if stats[:shoe] > big_shoe
        big_shoe = stats[:shoe]
        rebounds = stats[:rebounds]
      end
    end
  end
  return rebounds 
end
  #return their number of rebounds




