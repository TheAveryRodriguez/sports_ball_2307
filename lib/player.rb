class Player
  def initialize(name, monthly_cost, contract_length)
    @name = name
    @monthly_cost = monthly_cost
    @contract_length = contract_length
  end

  def first_name
    @name.split.first
  end

  def last_name
    @name.split.last
  end

  def monthly_cost
    monthly_cost = @monthly_cost
  end

  def contract_length
    contract_length = @contract_length
  end

  def total_cost
    total_cost = @contract_length * @monthly_cost
  end
end
