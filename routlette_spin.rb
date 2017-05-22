require "pry"

class RoulletteSpin
  attr_accessor :spin, :color
  def initialize
   spin
   color
  end

  def spin
   @spin = rand(13)
  end

  def color
    case @spin
    when 1,3,5,7,9,12
     @color = "Red"
    when 2,4,6,8,10,11
     @color = "Black"
    when 0
     @color = "Green"
    end
  end

  def show_dice
    print "Spin: ", @spin
  end

end
