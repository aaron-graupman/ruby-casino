@x = 1 + rand(55)
@spin_1
@spin_2
@spin_3

def slot_menu
  puts '\nWelcome to Slots'
  puts 'Press "p" to play for $1'
  puts 'Press "w" to view your wallet.'
  puts 'Press "s" to switch profiles.'
  puts 'Press "m" to return to the main menu.'
  puts 'Press "q" to leave the casino'
end

while true
  slot_menu
