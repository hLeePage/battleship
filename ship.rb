require 'matrix'
require 'pry'

class Ship

  attr_accessor :length, :ship_coordinates

  def initialize length
    @length = length
  end

  def place(x, y, horizontal)
    if !@ship_coordinates
      @ship_coordinates = []
      @length.times do |a, b| 
        @ship_coordinates << [x, y]
        if horizontal 
          x += 1
        else
          y += 1
        end
      end
    end
  end

  def covers?(x,y)
    @ship_coordinates.include?([x,y])
  end

  def overlaps_with?(ship)
    return !(@ship_coordinates & ship.ship_coordinates).empty?
  end

  def fire_at (x, y)
    
  end

end

#ship1 = Ship.new(4)
#ship1.place(2,1,true)
#binding.pry