module TicTacToe
  class Player
    attr_accessor :symbol, :name

    def initialize(input)
      raise ArgumentError.new("That's not a valid input") if input == {}
      @name = input[:name]
      @symbol = input[:symbol]
    end
    
  end
end
