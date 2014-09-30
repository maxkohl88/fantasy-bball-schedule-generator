class WeeklyMatchup

  attr_accessor :team1, :team2

  def initialize(team1:, team2:)
    @team1 = team1
    @team2 = team2
  end

  def show_matchup
    "#{team1.name} vs #{team2.name}"
  end

end
