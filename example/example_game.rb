require_relative "../lib/tic_tac_toe.rb"

puts "Welcome to tic tac toe"
tim = TicTacToe::Player.new({symbol: "X", name: "tim"})
chet = TicTacToe::Player.new({symbol: "O", name: "chet"})
players = [tim, chet]
TicTacToe::Game.new(players).play
