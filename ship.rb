class Ship
  attr_accessor :length

  def initialize length
    @length = length
  end

  occupied_spaces = []

  def place(x, y, horizontal)   
    if horizontal == true
      #generate a range for the x component
      stop = x + length - 1
      x_range = (x..stop).to_a
      coordinates = x_range.map { |x| [x,y]}
    elsif horizontal == false
    #generate a range for the y component
      stop = x + length - 1
      y_range = (y..stop).to_a
      coordinates = y_range.map { |y| [x,y]}
    end
    return coordinates
  end


end
