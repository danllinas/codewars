class Voter
  attr_accessor :name, :politics

  def initialize(name, politics)
    @name = name
    @politics = politics
  end

  @@chance_of_republican = {
    "Tea Party" => 90,
    "Conservative" => 75,
    "Neutral" => 50,
    "Liberal" => 25,
    "Socialist" => 10
  }

  def vote politicians

    party = (rand(100) <= @@chance_of_republican[@politics]) ? "Republican" : "Democrat"

    candidates = politicians.select do |politician|
      politician.politics == party
    end
    candidates.sample
  end
end

class Politician < Voter
  # attr_reader :name, :party

  # def initialize(name, party)
  #   @name = name
  #   @party = party
  # end

  def vote politicians
    self
  end
end
