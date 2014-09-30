require 'pry'

# all teams in the eastern division
eastern_division = ['DeRozan Kavaliers', 'Gorgui and Bess', 'Cigar City Smokers', 'Team Guatemalan Handshake', 'Grand Theft Otto', 'Game: Blouses', 'Team 7']

# all teams in the western division
western_division = ['Thors Enforcers', 'Team Shadynasty', 'Albany Artesticles', 'I Hate Myself', "The Film Shaqter's Guild", 'Twerk Nowitzki', 'Steve Francises']

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

week_count = 1

def print_index_list(league)

  index_list = []

  league.each do |team|
    index_list << league.index(team)
  end

  index_list
end


# create a list of indexes
index_list = print_index_list(all_teams)

# set the first team of the matchup
team_1 = all_teams[index_list.sample]

# delete the team from the index list (so a team can't play itself)
index_list.delete_at(all_teams.index(team_1))

def schedule_maker(league)

  week_count = 1

  while week_count <= 19
    puts "Week #{week_count}: "

    matchup = 1
    # index_list = print_index_list(league)

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
