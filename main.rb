require "./Game"

puts "Player 1, whats your name? "
print ">: "
player1 = gets.chomp

puts "Player 2, whats your name? "
print ">: "
player2 = gets.chomp

math_game = Game.new(player1, player2)
math_game.start