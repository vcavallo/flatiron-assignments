game = {
  :team1 => {
    :name => "The Burlls",
    :color1 => "Red",
    :color2 => "Black",
    :players => {
      :player1 => {
        :name => "Derp",
        :number => 0,
        :shoe_size => 3,
        :stats => {
          :points => 2,
          :rebounds => 0,
          :assists => 1,
          :steals => 1,
          :blocks => 0,
          :slam_dunks => 15
        } #stats
      }, #player1
      :player2 => {
        :name => "Destroyer",
        :number => 666,
        :shoe_size => 100,
        :stats => {
          :points => 0,
          :rebounds => 450,
          :assists => 0,
          :steals => 400,
          :blocks => 1000,
          :slam_dunks => 3
        } #stats
      }, #player3
      :player3 => {
        :name => "Slim",
        :number => 1,
        :shoe_size => 12,
        :stats => {
          :points => 10,
          :rebounds => 300,
          :assists => 20,
          :steals => 10,
          :blocks => 500,
          :slam_dunks => 1000
        } #stats
      }, #player3
      :player4 => {
        :name => "Ace",
        :number => 21,
        :shoe_size => 13,
        :stats => {
          :points => 200,
          :rebounds => 20,
          :assists => 50,
          :steals => 200,
          :blocks => 100,
          :slam_dunks => 60
        } #stats
      }, #player4
      :player5 => {
        :name => "Selfless Carl",
        :number => 88,
        :shoe_size => 10,
        :stats => {
          :points => 0,
          :rebounds => 200,
          :assists => 1000,
          :steals => 0,
          :blocks => 0,
          :slam_dunks => 10
        } #stats
      }, #player5
    }#players
  }, #team1

  :team2 => {
    :name => "Christmas Ladies",
    :color1 => "Green",
    :color2 => "Red",
    :players => {
      :player1 => {
        :name => "Carol",
        :number => 1,
        :shoe_size => 8,
        :stats => {
          :points => 20,
          :rebounds => 40,
          :assists => 20,
          :steals => 0,
          :blocks => 30,
          :slam_dunks => 15
        } #stats
      }, #player1
      :player2 => {
        :name => "Eve",
        :number => 2,
        :shoe_size => 7,
        :stats => {
          :points => 10,
          :rebounds => 30,
          :assists => 12,
          :steals => 2,
          :blocks => 40,
          :slam_dunks => 500
        } #stats
      }, #player3
      :player3 => {
        :name => "Elfie",
        :number => 3,
        :shoe_size => 11,
        :stats => {
          :points => 20,
          :rebounds => 300,
          :assists => 200,
          :steals => 100,
          :blocks => 200,
          :slam_dunks => 700
        } #stats
      }, #player3
      :player4 => {
        :name => "Dancer",
        :number => 4,
        :shoe_size => 12,
        :stats => {
          :points => 12,
          :rebounds => 12,
          :assists => 40,
          :steals => 100,
          :blocks => 300,
          :slam_dunks => 10
        } #stats
      }, #player4
      :player5 => {
        :name => "Vixen",
        :number => 5,
        :shoe_size => 5,
        :stats => {
          :points => 300,
          :rebounds => 450,
          :assists => 320,
          :steals => 100,
          :blocks => 50,
          :slam_dunks => 600
        } #stats
      }, #player5
    }#players
  }, #team1
}

    # :players => {
    #   :player1 => {
    #     :name => "Carol",
    #     :number => 1,
    #     :shoe_size => 8,
    #     :stats => {
    #       :points => 20,
    #       :rebounds => 40,
    #       :assists => 20,
    #       :steals => 0,
    #       :blocks => 30,
    #       :slam_dunks => 15
    #     } #stats
    #   }, #player1

# 1. Return the number of points scored for any player.

puts "Derps points:"
puts game[:team1][:players][:player1][:stats][:points]
puts ""

# 2. Return the shoe size for any player.

puts "A random shoe size:"
puts game[:team2][:players][:player3][:shoe_size]
puts ""

# 3. Return both colors for any team.

puts "Team 1's colors are:"
puts game[:team1][:color1]
puts game[:team1][:color2]
puts ""

# 4. Return both teams names.

puts "Team names are:"
puts game[:team1][:name]
puts game[:team2][:name]
puts ""

# 5. Return all the player numbers for a team.

puts "The numbers on Team 1 are:"
game[:team1][:players].each do |player, atts|
  atts.each do |att, value|
    if att == :number
      puts value
    end
  end
end
puts ""

# 6. Return all the stats for a player.

i = 0
game[:team1][:players][:player5][:stats].each do |stat, value|
  if i == 0
    print "Selfless Carl had #{value} #{stat}, "
  elsif i < (game[:team1][:players][:player5][:stats].size - 1)
    print "#{value} #{stat}, "
  else
    puts "and #{value} #{stat}"
  end
  i += 1
end
puts ""

# 7. Return the rebounds for the player with the largest shoe size.

shoe_sizes = []

game[:team1][:players].each do |player, atts|
  atts.each do |att, value|
    shoe_sizes << value if att == :shoe_size
  end
end

game[:team1][:players].each do |player, atts|
  atts.each do |att, value|
    if att == :shoe_size && value == shoe_sizes.max
      puts "The player with the largest shoe size has #{
      game[:team1][:players][player][:stats][:rebounds]} rebounds."
    end
  end
end



