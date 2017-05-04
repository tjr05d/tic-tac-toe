module TicTacToe
  class Player
    attr_accessor :symbol, :name

    def initialize(input)
      raise ArgumentError.new("That's not a valid input") if input == {}
      @name = input[:name]
      @symbol = input[:symbol]
    end

    def cap_name
      @name.capitalize
    end
  end
end

# attr_accessor :name, :symbol
#
# def initialize(name, symbol)
#   @name = name
#   @symbol = symbol
# end
tim = TicTacToe::Player.new({name: "Tim", symbol: "X"})
p tim
tim.symbol= "O"
p tim
