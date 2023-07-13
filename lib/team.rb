require "rspec"
require "./lib/player"

class Team
  attr_reader :roster

  def initialize(name, location)
    @roster = []
  end

  def player_count
    @roster.length
  end

  def add_player(new_player)
    @roster << new_player
  end
end
