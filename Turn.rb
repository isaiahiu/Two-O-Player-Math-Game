require "./Question"

class Turn
  
  def initialize(player)
    @player = player
    @question = Question.new
  end

  def turn_start 
    puts "----- NEW TURN -----"
    puts "#{@player}: #{@question.question} "
    print ">: "

    guess = gets.chomp.to_i

    if @question.guess?(guess) 
      puts "#{@player}: YES! You are correct."
    else
      puts "#{@player}: Seriously?! No!"
    end

  end

  def turn_end
    
  end


end

asd = Turn.new("Joe biden")
asd.turn_start 