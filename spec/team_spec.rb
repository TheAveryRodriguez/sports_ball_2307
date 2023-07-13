require "./lib/team"

describe Team do
  describe "initialize" do
    it "is an instance of" do
      team = Team.new("Dodgers", "Los Angeles")

      expect(team).to be_a(Team)
    end
  end
end
