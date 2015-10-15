require_relative 'ship'
require_relative 'battleship'

class Grid

  def initialize
    @ships = []
  end

  def has_ship_on? x, y
    @ships.find {|ship| ship.covers?(x,y)}
  end

=begin
  def display
    
    puts "    1   2   3   4   5   6   7   8   9   10"
    puts border
    ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J"].each do |ltr|
      puts "#{ltr} |"
    end
    puts border
  end

  def border
    "  -----------------------------------------"
  end
=end

  def place_ship(ship, x, y, horizontal)  
    ship.place(x, y, horizontal)    
    unless @ships.include?(ship)
    @ships << ship
    end
  end

end 