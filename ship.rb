
require_relative 'player'
require 'pry'

class Ship
  attr_accessor :length, :coordinates

  def initialize length
    @length = length
  end

  def place(x, y, horizontal)   
    if !@coordinates
      if horizontal == true
        #generate a range for the x component
        stop = x + length - 1
        x_range = (x..stop).to_a
        @coordinates = x_range.map { |x| [x,y]}

      elsif horizontal == false
      #generate a range for the y component
        stop = x + length - 1
        y_range = (y..stop).to_a
        @coordinates = y_range.map { |y| [x,y]}
      end
    else
      puts "Ship cannot be placed twice."
    end
  end

  def covers?(x, y)
    return @coordinates.include?([x, y])
  end


  def overlaps_with?(ship)
    !(self.coordinates & ship.coordinates).empty?
  end
end









