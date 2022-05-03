require "./Player"
require "./Turn"

class Game
  @@TURNS = []

  def initialize(player1,player2)
    @player1 = player1
    @player2 = player2
  end

  def start
    p1 = Player.new(@player1)
    p2 = Player.new(@player2)

    while p1 && p2 
      
      p1_turn = Turn.new(p1.name)
      p1_turn.turn_start
     
      if p1_turn.result == false && p1.lives > 0
        p1.lives -= 1
      end

      puts "#{p1.name}: #{p1.lives}/3 vs. #{p2.name}: #{p2.lives}/3"
      puts

      if p1.lives.eql? 0
        break
      end

      p2_turn = Turn.new(p2.name)
      p2_turn.turn_start
     
      if p2_turn.result == false && p2.lives > 0
        p2.lives -= 1
      end

      puts "#{p1.name}: #{p1.lives}/3 vs. #{p2.name}: #{p2.lives}/3"
      puts

      if p2.lives.eql? 0
        break
      end
    
    end

    puts "#{p1.lives > 0 ? p1.name : p2.name} is the winner!"
    puts
    puts "-----GAME OVER -----"
    puts 
    puts "Good bye!"
  end
  

end