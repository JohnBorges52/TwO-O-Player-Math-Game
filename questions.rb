require "./player.rb"

class Questions
  attr_accessor :answer, :ask

  def initialize
    @first_value = rand(5)
    @second_value = rand(5)
    @answer = @first_value + @second_value
    @ask = "what is the result of #{@first_value} + #{@second_value} ?\n"
  end
  def check_answer(input)
    if input == @answer.to_s
    return true
    else
      return false
    end
  end


end
