require "./lib/team"

describe Team do
  describe "initialize" do
    it "is an instance of" do
      team = Team.new("Dodgers", "Los Angeles")

      expect(team).to be_a(Team)
    end

    describe "roster" do
      it "is an array" do
        team = Team.new("Dodgers", "Los Angeles")

        expect(team.roster).to eq([])
      end
    end

    describe "player_count" do
      it "is an integer" do
        team = Team.new("Dodgers", "Los Angeles")

        expect(team.player_count).to eq(0)
      end
    end
  end
end
