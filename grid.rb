require_relative 'ship'
require_relative 'battleship'

class Grid

  def has_ship_on? x, y
   false
  end

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

end 