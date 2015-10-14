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

  def overlaps_with? other_ship
    @ship_holes.find{|hole| other_ship.covers?(hole.x, hole.y)} 
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
    if @ship_holes.count == 0
      return false
    else
      return !@ship_holes.find{|hole| hole.state == :empty}   
    end
  end

end

  


  

