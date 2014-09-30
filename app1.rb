require 'pry'
require '/team.rb'

# all teams in the eastern division
eastern_division = ['DeRozan Kavaliers', 'Gorgui and Bess', 'Cigar City Smokers', 'Team Guatemalan Handshake', 'Grand Theft Otto', 'Game: Blouses', 'Team 7']

# all teams in the western division
western_division = ['Thors Enforcers', 'Team Shadynasty', 'Albany Artesticles', 'I Hate Myself', "The Film Shaqter's Guild", 'Twerk Nowitzki', 'Steve Francises']

# class League

  # def initialize(teams)
    
  # end

# end

# create hashes for each divsion, including a key:value for each team's division.
# Then, combine both hashes into one 'master' hash
new_eastern_array = []

eastern_division.each do |team|

  hash = {name: team, division: 'East'}

  new_eastern_array << hash
end

new_western_array = []

western_division.each do |team|

  hash = {name: team, division: 'West'}

  new_western_array << hash
end

all_teams = new_eastern_array + new_western_array

def schedule_maker(league)
  week_count = 1

  while week_count <= 19
    puts "Week #{week_count}: "

    matchup = 1
    league_copy = league.dup

    while matchup <= 7

      team_1 = league_copy.sample
      league_copy.delete_at(league_copy.index(team_1))

      team_2 = league_copy.sample
      league_copy.delete_at(league_copy.index(team_2))

      puts "#{team_1[:name]} vs #{team_2[:name]}"

      matchup += 1
    end

  week_count += 1
  end
end

puts schedule_maker(all_teams)
