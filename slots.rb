require 'pry'

require_relative 'check_input'


class Slots
  def initialize(player)
    @x.to_i = 1 + rand(55) #random integer values assigned to each spin instance
    @spin_1 = @x.sample
    @spin_2 = @x.sample
    @spin_3 = @x.sample
    puts"\nWelcome to Slots"
    puts "#{player.name}, you have a balance of #{player.wallet.amount}\n"
  end

  while true
    slot_menu
    sm_input = gets.strip.downcase
    puts
    case sm_input
    when 'p'
      play_slot
    else
      CheckInput.new(player, sm_input)
    end
  end
end

def slot_menu
  puts "\nPress "p" to play for $1."
  puts 'Press "w" to view your wallet.'
  puts 'Press "s" to switch profiles.'
  puts 'Press "m" to return to the main menu.'
  puts 'Press "q" to leave the casino.'
  puts
end

def play_slot

  case result_1 #determines string output based on random integer value assigned to each string instance
    when @spin_1 = 1 + rand(4)
      result_1 == 'Cherry'
    when @spin_1 = 6 + rand(16)
      result_1 == 'Bar'
    when @spin_1 = 23 + rand(12)
      result_1 == 'Double Bar'
    when @spin_1 = 36 + rand(10)
      result_1 == 'Triple Bar'
    when @spin_1 = 47 + rand(7)
      result_1 == 'Red 7'
    when @spin_1 = 55 || 56
      result_1 == 'JACKPOT'
  end

  case result_2
    when @spin_2 = 1 + rand(4)
      result_2 == 'Cherry'
    when @spin_2 = 6 + rand(16)
      result_2 == 'Bar'
    when @spin_2 = 23 + rand(12)
      result_2 == 'Double Bar'
    when @spin_2 = 36 + rand(10)
      result_2 == 'Triple Bar'
    when @spin_2 = 47 + rand(7)
      result_2 == 'Red 7'
    when @spin_2 = 55 || 56
      result_2 == 'JACKPOT'
  end

  case result_3
    when @spin_3 = 1 + rand(4)
      result_3 == 'Cherry'
    when @spin_3 = 6 + rand(16)
      result_3 == 'Bar'
    when @spin_3 = 23 + rand(12)
      result_3 == 'Double Bar'
    when @spin_3 = 36 + rand(10)
      result_3 == 'Triple Bar'
    when @spin_3 = 47 + rand(7)
      result_3 == 'Red 7'
    when @spin_3 = 55 || 56
      result_3 == 'JACKPOT'
  end
# shows spin results with delay using the sleep function
  puts "\nDetermining your results...\n"
  sleep 2
  puts result_1 "\n"
  sleep 2
  puts result_2 "\n"
  sleep 2
  puts result_3 "\n"

  case calc_earnings
    if result_2 == result_1 || result_2 == result_3 #if spin 2 is the same as spins 1 or 3, pays out
      then @player.wallet.amount += 2.0
      puts "\nYou won $2!"
    if result_1 == ('Bar' || 'Double Bar' || 'Triple Bar') #if all three spins are any combo of any bar results, pays out
    && result_2 == ('Bar' || 'Double Bar' || 'Triple Bar')
    && result_3 == ('Bar' || 'Double Bar' || 'Triple Bar')
      then @player.wallet.amount += 4.0
      puts "\nYou won $4!"
    if result_1 && result_2 && result_3 == ('Red 7') #if all 3 results are red 7, pays out
      then @player.wallet.amount += 20.0
      puts "\nYou won $20!"
    if result_1 && result_2 && result_3 == ('Cherry') #if all three results are cherry, pays out
      then @player.wallet.amount += 35.0
      puts "\nYou won $35!"
    if result_1 && result_2 && result_3 == ('JACKPOT') #if all three results are jackpot, pays out
      then @player.wallet.amount += 100.0
      puts "\nJackpot! You won $100!"
    else
      then @player.wallet.amount -= 1.0 #if no winning results are spun, bet deducted from wallet
      puts "\nYou lose! Go get a real job you bum."
  end
end #ends play_slot
