require './team.rb'
require './matchup.rb'

team1 = Team.new(name: "DeRozan Kavaliers", division: "East")
team2 = Team.new(name: "Gorgui and Bess", division: "East")
team3 = Team.new(name: "Cigar City Smokers", division: "East")
team4 = Team.new(name: "Team Guatemalan Handshake", division: "East")
team5 = Team.new(name: "Grand Theft Otto", division: "East")
team6 = Team.new(name: "Game: Blouses", division: "East")
team7 = Team.new(name: "Team 7", division: "East")

team8 = Team.new(name: "Thor's Enforcers", division: "West")
team9 = Team.new(name: "Team Shadynasty", division: "West")
team10 = Team.new(name: "Albany Artesticles", division: "West")
team11 = Team.new(name: "I Hate Myself", division: "West")
team12 = Team.new(name: "The Film Shaqter's Guild", division: "West")
team13 = Team.new(name: "Twerk Nowitzki", division: "West")
team14 = Team.new(name: "Steve Francises", division: "West")

east = [team1, team2, team3, team4, team5, team6, team7]
west = [team8, team9, team10, team11, team12, team13, team14]
league = [east, west]

firstmatchup = WeeklyMatchup.new(team1: team1, team2: team2)

puts firstmatchup.show_matchup

def schedule_maker(league)
  week_count = 1
end


