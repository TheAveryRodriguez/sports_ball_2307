require "rspec"
require "./lib/player"

class Team
  attr_reader :roster, :player

  def initialize(roster, player)
    @roster = []
    @player = player
  end
end
