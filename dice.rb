require 'pry'

require_relative 'check_input'


class Dice
 def initialize(player)
   @player = player
   @sb_input = 0.0

   puts "\nWelcome to Se7en\n"
   puts "#{player.name}, you have a balance of #{player.wallet.amount}0\n"

   while true
     se7en_menu
     s7m_input = gets.strip.downcase
     puts
     case s7m_input
     when 'p'
       puts "Place your bet."
       puts
       @sb_input = gets.to_f
       puts
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

def bet_on
  puts 'Press 1 to bet on 7, pays 7 to 1.'
  puts 'Press 2 to bet on 6 and 8, pays 4 to 1.'
  puts "Press 3 to bet on 2 and 12, pays 18 to 1.\n"
  @bo_input = gets.to_i
  puts
  roll
end

def roll
  @die1 = 1 + rand(5)
  @die2 = 1 + rand(5)
@roll = @die1 + @die2
puts "Die 1: ", @die1
puts " Die 2:", @die2
puts
puts "Sum of dice is ", @roll,
puts
  if @bo_input == 1 && @roll == 7
    @player.wallet.amount += @sb_input * 7
    puts 'You win!'
    puts
  elsif @bo_input == 2 && @roll == 6 || @roll == 8
    @player.wallet.amount += @sb_input * 4
    puts 'You win!'
    puts
  elsif @bo_input == 3 && @roll == 2 || @roll == 12
    @player.wallet.amount += @sb_input * 18
    puts 'You win!'
    puts
  else
    @player.wallet.amount -= @sb_input
    puts 'You lose! My horse bites you in the butt!'
    puts
  end
end

end
