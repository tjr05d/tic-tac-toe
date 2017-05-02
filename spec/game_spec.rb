require_relative "../lib/game.rb"

module TicTacToe
  describe Game do

    context "#initialize" do
      it "randomly selects a current_player"
      it "randomly selects an other player"
    end

    context "#switch_players" do 
      it "will set @current_player to @other_player"
      it "will set @other_player to @current_player"
    end

    context "#solicit_move" do
      it "asks the player to make a move"
    end

    context "#get_move" do
      it "converts human_move of '1' to [0, 0]"
      it "converts human_move of '1' to [0, 0]"
    end

    context "#game_over_message" do
      it "returns '{current player name} won!' if board shows a winner"
      it "returns 'The game ended in a tie' if board shows a draw"
    end

  end
end
