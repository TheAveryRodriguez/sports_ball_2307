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
        player_3 = Player.new("Alan McClennan", 750000, 48)
        player_4 = Player.new("Hamilton Porter", 100000, 12)

        team.add_player(player_1)
        team.add_player(player_2)

        expect(team.roster).to eq([player_1, player_2])
        expect(team.player_count).to eq(2)

        team.add_player(player_3)
        team.add_player(player_4)
      end
    end

    describe "#long_term_players" do
      it "returns a list of players whose contract is greater than 2 years" do
        team = Team.new("Dodgers", "Los Angeles")

        player_1 = Player.new("Michael Palledorous", 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)
        player_3 = Player.new("Alan McClennan", 750000, 48)
        player_4 = Player.new("Hamilton Porter", 100000, 12)

        team.add_player(player_1)
        team.add_player(player_2)
        team.add_player(player_3)
        team.add_player(player_4)

        expect(team.long_term_players).to eq([player_1, player_3])
      end
    end

    describe "#short_term_players" do
      it "returns a list of players whose contract is 2 years or less" do
        team = Team.new("Dodgers", "Los Angeles")

        player_1 = Player.new("Michael Palledorous", 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)
        player_3 = Player.new("Alan McClennan", 750000, 48)
        player_4 = Player.new("Hamilton Porter", 100000, 12)

        team.add_player(player_1)
        team.add_player(player_2)
        team.add_player(player_3)
        team.add_player(player_4)

        expect(team.short_term_players).to eq([player_4, player_2])
      end
    end

    describe "#total_value" do
      it "totals the total_cost of players" do
        team = Team.new("Dodgers", "Los Angeles")

        player_1 = Player.new("Michael Palledorous", 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)
        player_3 = Player.new("Alan McClennan", 750000, 48)
        player_4 = Player.new("Hamilton Porter", 100000, 12)

        team.add_player(player_1)
        team.add_player(player_2)
        team.add_player(player_3)
        team.add_player(player_4)

        expect(team.total_value).to eq(85200000)
      end
    end

    describe "#details" do
      it "shows all details, total_value and player_count" do
        team = Team.new("Dodgers", "Los Angeles")

        player_1 = Player.new("Michael Palledorous", 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)
        player_3 = Player.new("Alan McClennan", 750000, 48)
        player_4 = Player.new("Hamilton Porter", 100000, 12)

        team.add_player(player_1)
        team.add_player(player_2)
        team.add_player(player_3)
        team.add_player(player_4)

        expect(team.details).to eq({"total_value" => 85200000, "player_count" => 4})
      end
    end

    describe "#players_by_last_name" do
      it "shows all players sorted by last_name" do
        team = Team.new("Dodgers", "Los Angeles")

        player_1 = Player.new("Michael Palledorous", 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)
        player_3 = Player.new("Alan McClennan", 750000, 48)
        player_4 = Player.new("Hamilton Porter", 100000, 12)

        team.add_player(player_1)
        team.add_player(player_2)
        team.add_player(player_3)
        team.add_player(player_4)

        expect(team.players_by_last_name).to eq("DeNunez, McClennan, Palledorous, Porter")
      end
    end
  end
end
