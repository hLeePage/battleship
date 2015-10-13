require 'matrix'
require 'pry'
require_relative 'hole'

class Ship

  attr_accessor :length, :ship_holes

  def initialize length
    @length = length
    @ship_holes = []
  end

  def place x, y, horizontal
    if @ship_holes.empty?
      @length.times do |a, b| 
        @ship_holes << Hole.new(x,y)
        if horizontal 
          x += 1
        else
          y += 1
        end
      end
    end
  end

  def covers? x,y
    @ship_holes.find{|hole| hole.x == x && hole.y == y}
  end

  def overlaps_with? ship
    return !(@ship_holes & ship.ship_holes).empty?
  end



  def fire_at x, y   
    hole = covers? x, y
    if hole
      hole.hit!
      return true
    else
      return false
    end
  end

  def sunk? 
  end

end

#=begin
ship1 = Ship.new(4)
ship1.place(2, 1, true)
ship2 = Ship.new(4)
ship2.place(3, 1, true)
ship3 = Ship.new(4)
ship3.place(2, 1, false)
binding.pry
#=end

