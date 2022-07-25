  def run_test(questions)
    life = 3
    while life != 0
      number_of_questions = 1
      answer = ""
      
      first_value = rand(5)
      second_value = rand(5)

      ask = "What is the result of #{first_value} + #{second_value} ?\n" 
      result = first_value + second_value
      questions.push(Questions.new(ask, result.to_s))
      
      for question in questions
        puts question.prompt
        answer = gets.chomp()
        
        

        if answer != question.answer
          life -=1
          puts "You are wrong!! Your life is #{life}/3"
          if life == 0
            puts "\nGAME OVER"
            break
          end
        else
          puts "You are correct!! Your life is #{life}/3"
        end

      end
    end      

  end
