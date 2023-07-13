require "rspec"
require "./lib/player"

class Team
  attr_reader :roster, :player

  def initialize(roster, player)
    @roster = []
    @player = player
  end

  def player_count
    # of players in roster
  end

  def roster
    roster = [@player]
  end
end
