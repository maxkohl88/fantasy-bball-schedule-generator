class Matchup

  attr_accessor :team1, :team2, :week

  def initialize(team1:, team2:, week:)
    @team1 = team1
    @team2 = team2
    @week = week
  end

  def show_matchup
    "#{team1.name} vs #{team2.name}, Week #{week}"
  end

end
