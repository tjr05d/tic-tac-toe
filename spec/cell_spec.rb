require_relative "../lib/cell.rb"

module TicTacToe
  describe Cell do
    context "#initialize" do
      it "is initialized with a value of '' by default" do
        cell = Cell.new
        expect(cell.value).to eq ''
      end

      it "can be initialized with an X" do

      end 
    end
  end
end
