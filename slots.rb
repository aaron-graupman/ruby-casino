require 'pry'

require_relative 'check_input'


class Slots
  def initialize(player)
    @x.to_i = 1 + rand(55)
    @spin_1
    @spin_2
    @spin_3
    puts"\nWelcome to Slots"
    puts "#{player.name}, you have a balance of #{player.wallet.amount}\n"
  end

def play_slot

end

def slot_menu
  puts "\nPress "p" to play for $1."
  puts 'Press "w" to view your wallet.'
  puts 'Press "s" to switch profiles.'
  puts 'Press "m" to return to the main menu.'
  puts 'Press "q" to leave the casino.'
  puts
end

while true
  slot_menu
  sm_input = gets.strip.downcase
when 'p'
  play_slot
else
  CheckInput.new(player)
end
