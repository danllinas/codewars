require './workspace.rb'

class World
  attr_accessor :politicians, :voters

  def initialize
    @voters = []
    @politicians = []
  end

  def main_menu
    puts "What would you like to do?
(C)reate, (L)ist, (U)pdate, or (V)ote"
    option = gets.chomp.upcase

    case option
    when "C"
      puts `clear`
      create_menu
    when "L"
      puts `clear`
      list_menu
    when "U"
      puts `clear`
      who_would_you_like_to_update
    when "V"
      puts `clear`
      run_election
    else
      puts `clear`
      main_menu
    end
  end

  def create_menu
    puts "What would you like to create?
    (P)olitician or (V)oter"
    create_option = gets.chomp.upcase

    case create_option
    when "V"
      puts `clear`
      create_voter_menu
    when "P"
      puts `clear`
      create_pol_menu
    else puts `clear`
      puts "Sorry that is not a valid option please
      input V or P"
      create_menu
    end
  end

  def create_voter_menu
    puts "Name?"
    name = gets.chomp

    puts "Politics?
(L)iberal, (C)onservative, (T)ea Party, (S)ocialist, or (N)eutral"
    politics = gets.chomp.upcase
    case politics
    when "L"
      puts `clear`
      politics = "Liberal"
    when "C"
      puts `clear`
      politics = "Conservative"
    when "T"
      puts `clear`
      politics = "Tea Party"
    when "S"
      puts `clear`
      politics = "Socialist"
    when "N"
      puts `clear`
      politics = "Neutral"
    else puts `clear`
      puts "Invalid Entry
      Options: L for Liberal, C for Conservative, T for Tea Party,
      S for Socialist for N for Neutral"
      create_voter_menu
    end

    @voters << Voter.new(name, politics)
    main_menu
  end

  def create_pol_menu
    puts "Name?"
    name = gets.chomp

    puts "Party?
(D)emocrat or (R)epublican"
    politics = gets.chomp.upcase
    case politics
    when "D"
      puts `clear`
      politics = "Democrat"
    when "R"
      puts `clear`
      politics = "Republican"
    else puts `clear`
      puts "Invalid Entry
      Options: D for Democrat or R for Republican"
      create_pol_menu
    end

    @politicians << Politician.new(name, politics)
    puts `clear`
    main_menu
  end

 def run_election
    population = @politicians + @voters

    score_board = {}

    @politicians.each do |politician|
      score_board[politician.name] = 0
    end

    population.each do |person|
      politician = person.vote(@politicians)
      score_board[politician.name] += 1
    end

     puts score_board
     puts
     main_menu
  end

  def who_would_you_like_to_update
    puts "Would you like to update a (V)oter or (P)olitician?"
    option = gets.chomp.upcase
    case option
    when "V"
      puts `clear`
      update_voter_name_or_politics
    when "P"
      puts `clear`
      update_pol_name_or_party
    else puts `clear`
      puts "Invalid Input
      Options: V for voter or P for politician"
      who_would_you_like_to_update
    end
  end

  def update_voter_name_or_politics
    puts "Would you like to update the voter's (N)ame or (P)olitics?"
    option = gets.chomp.upcase
    case option
    when "N"
      puts `clear`
      update_voter_name
    when "P"
      puts `clear`
      update_voter_politics
    else puts `clear`
      puts "Invalid Input
      Options: N for name or P for politics"
      update_voter_name_or_politics
    end
  end

  def update_pol_name_or_party
    puts "Would you like to update the politician's (N)ame or (P)arty?"
    option = gets.chomp.upcase
    case option
    when "N"
      puts `clear`
      update_pol_name
    when "P"
      puts `clear`
      update_pol_party
    else puts `clear`
      puts "Invalid Input
      Options: N for name or P for party"
      update_pol_name_or_party
    end
  end

    def update_pol_name
      name_found = false
      until name_found
    puts "Who's name would you like to change?"
    pol_name = gets.chomp.downcase
    @politicians.each do |pol|
      if pol.name == pol_name
        puts "What is their new name?"
        update_pol = gets.chomp.downcase
        pol.name = update_pol
        name_found = true
        main_menu
      end
    end
    unless name_found
      puts "Name not found. Here's a list of names to choose from."
       @politicians.each do |pol|
        puts pol.name
      end
    end
  end
end

def update_pol_party
  name_found = false
  until name_found
    puts "Who's party would you like to change?"
    pol_name = gets.chomp.downcase
    @politicians.each do |pol|
      if pol.name == pol_name
        puts "What is their new party?
        Options: (D)emocrat, (R)epublican"

        update_pol = gets.chomp.upcase

        case update_pol
        when "D"
          puts `clear`
          pol_politics = "Democrat"
        when "R"
          puts `clear`
          pol_politics = "Republican"
        else puts `clear`
          puts "Invalid Input
          Options: D for Democrat or R for Republican"
          pol_politics = pol.politics
        end

        pol.politics = pol_politics
        name_found = true
        main_menu
      end
    end
      unless name_found
       puts "Name not found. Here's a list of names to choose from."
      @politicians.each do |pol|
      puts pol.name
    end
  end
end
end




def update_voter_name
  name_found = false
  until name_found
    puts "Who's name would you like to change?"
    voter_name = gets.chomp.downcase
    @voters.each do |voter|
      if voter.name == voter_name
        puts "What is their new name?"
        update_voter = gets.chomp.downcase
        voter.name = update_voter
        name_found = true
        main_menu
       end
     end
     unless name_found
      puts "Name not found. Here's a list of names to choose from."
      @voters.each do |voter|
      puts voter.name
    end
     end
   end
 end


def update_voter_politics
  name_found = false
  until name_found
  puts "Who's politics would you like to change?"
  voter_name = gets.chomp.downcase
  @voters.each do |voter|
    if voter.name == voter_name
      puts "What is their new politics?
      Options: (L)iberal, (C)onservative, (T)ea Party,
      (S)ocialist, (N)eutral"

      update_voter = gets.chomp.upcase

      case update_voter
      when "L"
        puts `clear`
        voter_politics = "Liberal"
      when "C"
        puts `clear`
        voter_politics = "Conservative"
      when "T"
        puts `clear`
        voter_politics = "Tea Party"
      when "S"
        puts `clear`
        voter_politics = "Socialist"
      when "N"
        puts `clear`
        voter_politics = "Neutral"
      else
        puts `clear`
        puts "Invalid Entry
        Options: L for Liberal, C for Conservative, T for Tea Party
        S for Socialist, or N for Neutral"
        voter_politics = voter.politics
      end

        voter.politics = voter_politics
        name_found = true
        main_menu
      end
    end
    unless name_found
       puts "Name not found. Here's a list of names to choose from."
      @voters.each do |voter|
      puts voter.name
    end
    end
  end
end

  def list_menu
    @voters.each do |voter|
      puts "Voter, #{voter.name}, #{voter.politics}"
    end
    @politicians.each do |pol|
      puts "Politician, #{pol.name}, #{pol.politics}"
    end
    main_menu
  end
end



world = World.new
world.main_menu
