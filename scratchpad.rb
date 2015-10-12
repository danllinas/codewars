
def ready
  puts "are you ready 'yes or no?'"
  reply = gets.chomp
end

def questions
       puts "First question: What's the capital city of Colombia/n"
       puts "1.Bogotá"
       puts "2.Buenos aires"
       puts "3.Peru"
       puts "Write your answer"
       firstanswer = gets.chomp.downcase
          if ["bogotá","bogota","1","1.","1.bogota","1.bogotá"].include? firstanswer
          # if firstanswer.capitalize == "Bogota"
               puts "Well done. You earned $100. Let's move forward"
               puts "Second question: What's the capital city of Ecuador?"
               puts "1.quito"
               puts "2.medellin"
               puts "3.montevideo"
               puts "write your answer"

               secondanswer = gets.chomp
                if secondanswer.capitalize == "Quito"
                      puts "Well done. You have earned 500.000 so far. Let's move forward"
                      puts "Third question: what's the name of the pope?"
                      puts "1.Francisco"
                      puts "2.Paulo"
                      puts "3.Pablo"
                      puts "write your answer"
                      thirdanswer = gets.chomp
                        if thirdanswer.capitalize == "Francisco"
                        puts "                                                   /$$
                                                  |__/
 /$$   /$$  /$$$$$$  /$$   /$$       /$$  /$$  /$$ /$$ /$$$$$$$
| $$  | $$ /$$__  $$| $$  | $$      | $$ | $$ | $$| $$| $$__  $$
| $$  | $$| $$  \ $$| $$  | $$      | $$ | $$ | $$| $$| $$  \ $$
| $$  | $$| $$  | $$| $$  | $$      | $$ | $$ | $$| $$| $$  | $$
|  $$$$$$$|  $$$$$$/|  $$$$$$/      |  $$$$$/$$$$/| $$| $$  | $$
 \____  $$ \______/  \______/        \_____/\___/ |__/|__/  |__/
 /$$  | $$
|  $$$$$$/
 \______/                                                       "
                        sleep(1)
                        Launchy.open("https://www.youtube.com/watch?v=l91ISfcuzDw")
                        else
                          puts "wrong. You lose"
                          puts "let's play again"
                          ready
                          questions
                        end
                else
                  puts "wrong. you lose"
                  puts "let's play again"
                  ready
                  questions
                end
          else
              puts "wrong. you lose"
              puts "let's play again"
              ready
              questions
          end
        end

puts "Hi! we are going to play 'Who wants to be a Millonaire?'"
puts "We will send some of questions. For each question you answer correctly, you will earn a certain amount of money. You can earn up to a million dollars"

user_answer = ready
options = ["yes","no"]

if user_answer.include? options[0]
    questions
  else
    until user_answer.include? options[0] do
      user_answer = ready
    end
    questions
end
