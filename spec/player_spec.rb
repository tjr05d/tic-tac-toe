require_relative "../lib/player.rb"

module TicTacToe
  describe Player do

    context "#initialize" do
      it "raises an error when initialized with {}" do
        expect{Player.new({})}.to raise_error
      end

      it "does not raise an error with a valid input hash" do
        input = {name: "Tim", symbol: "X"}
        expect{Player.new(input)}.to_not raise_error
      end
    end

    context "#symbol" do
      it "returns the players symbol" do
        input = {name: "Tim", symbol: "X"}
        player = Player.new(input)
        expect(player.symbol).to eq "X"
      end
    end

    context "#name" do
      it "returns the players name"
    end

  end
end
