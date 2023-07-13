class Player
  def initialize(name, monthly_cost, contract_length)
    @name = name
    @monthly_cost = monthly_cost
    @contract_length = contract_length
  end

  def first_name
    words = @name.to_s.split
    first_word = words.first
    @name = first_word
  end

  def last_name
    words = @name.to_s.strip.split
    last_word = words.last
    @name = last_word
  end

  def monthly_cost
    monthly_cost = @monthly_cost
  end
end
