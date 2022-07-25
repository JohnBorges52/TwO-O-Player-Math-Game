class Game
  attr_accessor :players, :player1, :player2, :current_player
  
  def initialize
   @player1 = ""
   @player2 = ""
   @current_player = ""
  end

  def players_to_play
    puts "PLAYER 1"
    puts "Whats your name? "
    name = gets.chomp()
    @player1 = Player.new(name)
  
    puts "Welcome #{@player1.name}, you have #{@player1.life} lives"
    puts ""
  
    puts "PLAYER 2"
    puts "Whats your name? "
    name = gets.chomp()
    @player2 = Player.new(name)
    
   
    puts "Welcome #{@player2.name}, you have #{@player2.life} lives"
    puts ""
    @current_player = @player1
  end

  def ask_questions
    round = 1
  
    while @player1.life != 0 || @player2.life != 0
      question = Questions.new
      puts "ROUND #{round}" 
      puts "#{@current_player.name} #{question.ask}"
      answer = gets.chomp()
        if question.check_answer(answer)
        puts "#{@current_player.name} you are correct!! Your life is #{@current_player.life}/3"

       else
        @current_player.decrease
         puts "#{@current_player.name} You are wrong!! Your life is #{@current_player.life}/3"
       end
       puts "#{@player1.name}: #{@player1.life}/3 vs #{@player2.name}: #{@player2.life}/3 "

       round += 1 
       if @current_player.life == 0
        winner =  
        break
        end

       if @current_player == @player1
        @current_player = @player2
       else
        @current_player = @player1
       end

    end      
  
    puts "GAME OVER "
  end


def start
  players_to_play
  ask_questions
end


end
