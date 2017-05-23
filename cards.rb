class Card
 # Getter and Setter methods for rank, suit and color
 attr_accessor :rank, :rate, :suit, :color
 # Gets called when you call the new method to create an instance
 # card = Card.new('10', 'K', 'Black')
 def initialize(rank, suit, color)
   @rank = rank
   case rank
   when "J"
     @rate = "11"
   when "Q"
     @rate = "12"
   when "K"
     @rate = "13"
   when "A"
     @rate = "14"
   else
     @rate = rank
   end
   @suit = suit
   @color = color
 end
end
