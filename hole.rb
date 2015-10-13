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

  def === hole
    if self.x == hole.x && self.y == hole.y && self.state == hole.state
      return true
    end
    return false
  end

end