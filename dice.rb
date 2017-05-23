require 'pry'

require_relative 'check_input'


class Dice
 def initialize(player)
   @player = player
   @roll = @die1 + @die2
   @sb_input = 0.0

   puts "\nWelcome to Se7en\n"
   puts "#{player.name}, you have a balance of #{player.wallet.amount}0\n"

   while true
     se7en_menu
     s7m_input = gets.strip.downcase
     puts
     case s7m_input
     when 'p'
       puts "Place your bet.\n"
       @sb_input = gets.to_f
       bet_on
     else
       CheckInput.new(s7m_input, @player)
     end
   end
 end

def se7en_menu
  puts 'Press "p" to play.'
  puts 'Press "w" to view your wallet.'
  puts 'Press "s" to switch current player.'
  puts 'Press "m" return to the main menu.'
  puts "Press \"q\" to leave the casino.\n"
end


#
# def bet_on
#   puts 'Press 1 to bet on 7, pays 7 to 1.'
#   puts 'Press 2 to bet on 6 and 8, pays 4 to 1.'
#   puts "Press 3 to bet on 2 and 12, pays 18 to 1.\n"
# end

# def roll
#   @die1 = 1 + rand(5)
#   @die2 = 1 + rand(5)
# end

# def show_dice
#  print "Die1: ", @die1, " Die2:", @die2
# end
#
#  def show_sum
#    print "Sum of dice is ", @roll, ".\n"
#    end
end
