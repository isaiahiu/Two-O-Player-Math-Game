require "./Question"

class Turn
  attr_reader :result

  def initialize(player)
    @current_player = player
    @question = Question.new
    @result = nil
  end

  def turn_start 
    puts "----- NEW TURN -----"
    puts "#{@current_player}: #{@question.question} "
    print ">: "

    guess = gets.chomp.to_i

    if @question.guess?(guess) 
      @result = true
      puts "#{@current_player}: YES! You are correct."
    else
      @result = false
      puts "#{@current_player}: Seriously?! No!"
    end

  end

end

# asd = Turn.new("Joe biden")
# asd.turn_start 
# puts asd.result