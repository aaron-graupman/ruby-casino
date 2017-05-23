require 'pry'

require_relative 'check_input'


class Slots
  def initialize(player)
    @player = player
    puts"\nWelcome to Slots"
    puts "#{player.name}, you have a balance of #{player.wallet.amount}\n"

    while true
      slot_menu
      sm_input = gets.strip.downcase
      puts
      case sm_input
      when 'p'
        play_slot
      else
        CheckInput.new(sm_input, player)
      end
    end
  end

  def slot_menu
    puts "\nPress \"p\" to play for $1."
    puts 'Press "w" to view your wallet.'
    puts 'Press "s" to switch profiles.'
    puts 'Press "m" to return to the main menu.'
    puts 'Press "q" to leave the casino.'
    puts
  end

  def play_slot
    @spin_1 = 1 + rand(55)
    @spin_2 = 1 + rand(55)
    @spin_3 = 1 + rand(55)

    #determines string output based on random integer value assigned to each string instance
    if @spin_1 > 0 && @spin_1 <= 5
      @result_1 = 'Cherry'
    elsif @spin_1 > 5 && @spin_1 <= 22
      @result_1 = 'Bar'
    elsif @spin_1 > 22 && @spin_1 <= 35
      @result_1 = 'Double Bar'
    elsif @spin_1 > 35 && @spin_1 <= 46
      @result_1 = 'Triple Bar'
    elsif @spin_1 > 46 && @spin_1 <= 54
      @result_1 = 'Red 7'
    elsif @spin_1 == 55 || @spin_1 == 56
      @result_1 = 'JACKPOT'
    end


    if @spin_2 > 0 && @spin_2 <= 5
      @result_2 = 'Cherry'
    elsif @spin_2 > 5 && @spin_2 <= 22
      @result_2 = 'Bar'
    elsif @spin_2 > 22 && @spin_2 <= 35
      @result_2 = 'Double Bar'
    elsif @spin_2 > 35 && @spin_2 <= 46
      @result_2 = 'Triple Bar'
    elsif @spin_2 > 46 && @spin_2 <= 54
      @result_2 = 'Red 7'
    elsif @spin_2 == 55 || @spin_2 == 56
      @result_2 = 'JACKPOT'
    end

    if @spin_3 > 0 && @spin_3 <= 5
      @result_3 = 'Cherry'
    elsif @spin_3 > 5 && @spin_3 <= 22
      @result_3 = 'Bar'
    elsif @spin_3 > 22 && @spin_3 <= 35
      @result_3 = 'Double Bar'
    elsif @spin_3 > 35 && @spin_3 <= 46
      @result_3 = 'Triple Bar'
    elsif @spin_3 > 46 && @spin_3 <= 54
      @result_3 = 'Red 7'
    elsif @spin_3 == 55 || @spin_3 == 56
      @result_3 = 'JACKPOT'
    end
     #binding.pry
  # shows spin results with delay using the sleep function
    puts "\nDetermining your results...\n"
    sleep 2
    puts @result_1 + "\n"
    sleep 2
    puts @result_2 + "\n"
    sleep 2
    puts @result_3 + "\n"
    sleep 2
    #if all three spins are any combo of any bar results, pays out
    if @result_1 == 'Bar' && @result_2 == 'Bar' && @result_3 == 'Bar'
      @player.wallet.amount += 4.0
      puts "\nYou won $4!"
    elsif @result_1 == 'Double Bar' && @result_2 == 'Double Bar' && @result_3 == 'Double Bar'
      @player.wallet.amount += 4.0
      puts "\nYou won $4!"
    elsif @result_1 == 'Triple Bar' && @result_2 == 'Triple Bar' && @result_3 == 'Triple Bar'
      @player.wallet.amount += 4.0
      puts "\nYou won $4!"
    elsif @result_1 == 'Red 7' && @result_2 == 'Red 7' && @result_3 == 'Red 7' #if all 3 results are red 7, pays out
      @player.wallet.amount += 20.0
      puts "\nYou won $20!"
    elsif @result_1 == 'Cherry' && @result_2 == 'Cherry' && @result_3 == 'Cherry' #if all three results are cherry, pays out
      @player.wallet.amount += 35.0
      puts "\nYou won $35!"
    elsif @result_1 == 'JACKPOT' && @result_2 == 'JACKPOT' && @result_3 == 'JACKPOT' #if all three results are jackpot, pays out
      @player.wallet.amount += 100.0
      puts "\nJackpot! You won $100!"
    elsif @result_2 == @result_1 || @result_2 == @result_3 #if spin 2 is the same as spins 1 or 3, pays out
      @player.wallet.amount += 2.0
      puts "\nYou won $2!"
    else
      @player.wallet.amount -= 1.0 #if no winning results are spun, bet deducted from wallet
      puts "\nYou lose! Go get a real job you bum."
    end
  end
end
