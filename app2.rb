require 'pry'
require './team.rb'
require './matchup.rb'
require './division.rb'

EASTERN_TEAMS = [
Team.new("DeRozan Kavaliers", division: "East"),
Team.new("Gorgui and Bess", division: "East"),
Team.new("Cigar City Smokers", division: "East"),
Team.new("Team Guatemalan Handshake", division: "East"),
Team.new("Grand Theft Otto", division: "East"),
Team.new("Game: Blouses", division: "East"),
Team.new("Team 7", division: "East")
]

WESTERN_TEAMS = [
Team.new("Thor's Enforcers", division: "West"),
Team.new("Team Shadynasty", division: "West"),
Team.new("Albany Artesticles", division: "West"),
Team.new("I Hate Myself", division: "West"),
Team.new("The Film Shaqter's Guild", division: "West"),
Team.new("Twerk Nowitzki", division: "West"),
Team.new("Steve Francises", division: "West")
]

east = Division.new(name: "East", teams: EASTERN_TEAMS)
west = Division.new(name: "West", teams: WESTERN_TEAMS)

# set the first team for the first matchup
team1 = east.teams.sample

#set the second team for the first matchup
team2 = east.teams.sample

def create_matchup(first_team, second_team)
  if first_team == second_team
    second_team = east.teams.sample
    same_team_matchup(first_team, second_team)
  else
    Matchup.new(team1: first_team, team2: second_team, week: 1)
  end
end

binding.pry

def schedule_maker(league)
  matchup = 1
  weekly_matchups = []

  while matchup <= 7
    team1 = league[0].sample
    team2 = league[0].sample

    if team1 == team2
      team2 = nil
    else
      weekly_matchups << Matchup.new(team1: team1, team2: team2, week: matchup)
    end

    matchup +=1 
  end

  weekly_matchups
end
