require 'pry'

require_relative 'check_input'

@x = 1 + rand(55)
@spin_1
@spin_2
@spin_3

def initialize(player)
end

def play_slot

def slot_menu
  puts "\nWelcome to Slots"
  puts 'Press "p" to play for $1.'
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
