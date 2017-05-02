require_relative "../lib/board.rb"

module TicTacToe
  describe Board do
    context "#initialize" do
      it "intializes with a grid"
      it "sets a grid with 3 rows by default"
      it "creates three things in each row by default"
    end

    context "#grid" do
      it "returns the grid"
    end

    context "#get_cell" do
      it "returns the cell based on (x, y) coordinate"
    end

    context "#set_cell" do
      it "updates the value of a cell at (x, y) coordinate"
    end

    context "#game_over" do
      it "returns :winner if winner? is true"
      it "returns :draw if #winner? is false and #draw? is true"
      it "returns false if #winner is false and #draw is false"
      it "returns :winner when row has objects with values that are the same"
      it "returns :winner when colum has objects with values that are all the same"
      it "returns :winner when diagonal has objects with values that are all the same"
      it "returns :draw when all spaces on the board are taken"
      it "returns false when there is no winner or draw"
    end
  end
end
