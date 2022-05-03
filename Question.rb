class Question
  attr_reader :numbers, :answer
  def initialize
    @numbers = Hash.new { |hash, key| hash[key] = rand(1..20) }
    @answer = @numbers[0] + @numbers[1]
  end

  def question
    "What does #{numbers[0]} and #{numbers[1]} equal?"
  end

  def guess?(number)
    number == @answer
  end

end

# question1 = Question.new
# puts question1.question
# puts question1.guess?(2)