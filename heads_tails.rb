require 'pry'

require_relative 'check_input'

class HeadsTails
  @ct = ['heads', 'tails']
  binding.pry
  @ctb_input = 0.0

  def initialize(player)
    puts "\nWelcome to Heads or Tails\n"
    puts "#{player.name}, you have a balance of #{player.wallet.amount}\n"

    while true
      coin_toss_menu
      ctm_input = gets.strip.downcase
      puts
      case ctm_input
      when 'p'
        puts "How much money would you like to bet (Ex. 5.50)?\n"
        @ctb_input = gets.to_f
        coin_toss
      else
        CheckInput.new(player, ctm_input)
      end
    end
  end


  def coin_toss_menu
    puts 'Press "p" to play. A winning bet pays 1 to 1.'
    puts 'Press "s" to switch current player'
    puts 'Press "m" return to the main menu.'
    puts "Press \"q\" to leave the casino.\n"
  end

  def ct_win
    player.wallet.amount += @ctb_input
  end

  def coin_toss
    puts "\nHeads or Tails?"
    ct_input = gets.strip.downcase

    if ct_input == 'heads' || ct_input =='tails'
    else
      puts "\nInvalid selection, try again when you are sober."
      coin_toss
    end

    ct_result = @ct.sample
    puts "\nIt's" + ct_result

    if ct_input = ct_result
      puts "\nYou win"
      ct_win
    else
      puts "\nYou lose sucker!"
      player.wallet.amount -= @ctb_input
      coin_toss_menu
    end
  end

end
