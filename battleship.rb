class Player
end

class HumanPlayer < Player
  attr_accessor :name
  def initialize name 
    @name = name
  end
end

class ComputerPlayer < Player
end

