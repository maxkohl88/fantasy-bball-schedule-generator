eastern_division = ['DeRozan Kavaliers', 'Gorgui and Bess', 'Cigar City Smokers', 'Team Guatemalan Handshake', 'Grand Theft Otto', 'Game: Blouses', 'Team 7']

western_division = ['Thors Enforcers', 'Team Shadynasty', 'Albany Artesticles', 'I Hate Myself', "The Film Shaqter's Guild", 'Twerk Nowitzki', 'Steve Francises']

eastern_division.each do |team|
  puts team
end

week_count = 1

while week_count < 20 
  puts "Week #{week_count}:"

  puts "Team 1 vs Team 2"
  puts "Team 3 vs Team 4"
  puts "Team 5 vs Team 6"
  puts "Team 7 vs Team 8"
  puts "Team 9 vs Team 10"
  puts "Team 11 vs Team 12"
  puts "Team 13 vs Team 14"

  week_count += 1
end


def print_index_list(division)

  index_list = []

  division.each do |team|
    index_list << division.index(team)
  end

  index_list
end


divsion_1_index_list = print_index_list(eastern_division)

team_1_index = index_list.sample

puts team_1_index


def matchup_maker(division_1, division_2)

  divsion_1_index_list = print_index_list(eastern_division)
  team_1_index = index_list.sample

  matchup_1 = "#{division_1[team_1_index]} vs #{division_1[1]}"

end
