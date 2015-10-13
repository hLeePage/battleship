class Hole
  attr_accessor :x, :y, :hit, :state

  def initialize x, y
    @x = x
    @y = y
    @state = :empty
  end

  def hit!
    @state = :hit
  end

  def hit?
    @state == :hit
  end

  def miss!
    @state = :miss
  end

  def miss?
    @state == :miss
  end

  def to_arr 
    return Array[self.x, self.y]
  end

end
