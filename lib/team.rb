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

  def long_term_players
    @roster.find_all do |player|
      player.contract_length > 24
    end
  end

  def short_term_players
    players = @roster.find_all do |player|
      if player.contract_length <= 24
        player
      end
    end

    players.sort_by do |player|
      player.contract_length
    end
  end

  def total_value
    total = 0
    @roster.sum do |player|
      total += player.total_cost
    end
    total
  end

  def details
    {
      "total_value" => total_value,
      "player_count" => player_count
    }
  end

  def average_cost_of_player
    average_cost = (total_value / player_count).digits

    cost = ""

    average_cost.each.with_index do |digit, index|
      cost = digit.to_s + cost

      if index % 3 == 2
        cost = "," + cost
      end
    end

    "$#{cost}"
  end

  def players_by_last_name
    @roster.map { |player| player.last_name }.sort.join(", ")
  end
end
