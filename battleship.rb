class Player
  attr_accessor :name
  def initialize name = "Dave"
    @name = name
  end
end

class HumanPlayer < Player
  attr_accessor :name
  def initialize name = "Dave"
    @name = name
  end
end

class ComputerPlayer < Player
  attr_accessor :name
  def initialize 
    @name = "HAL 9000"
  end
end

