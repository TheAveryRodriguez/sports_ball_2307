require "./lib/team"

describe Team do
  describe "#initialize" do
    it "is an instance of" do
      team = Team.new("Dodgers", "Los Angeles")

      expect(team).to be_a(Team)
    end

    describe "#roster" do
      it "returns list of players on team" do
        team = Team.new("Dodgers", "Los Angeles")

        expect(team.roster).to eq([])
      end
    end

    describe "#player_count" do
      it "returns number of players on team" do
        team = Team.new("Dodgers", "Los Angeles")

        expect(team.player_count).to eq(0)
      end
    end

    describe "#add_player" do
      it "adds a player to the roster" do
        team = Team.new("Dodgers", "Los Angeles")

        player_1 = Player.new("Michael Palledorous", 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)

        team.add_player(player_1)
        team.add_player(player_2)

        expect(team.roster).to eq([player_1, player_2])
        expect(team.player_count).to eq(2)
      end
    end
  end
end
