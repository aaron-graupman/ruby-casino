require_relative 'check_input'
@ct = ['heads', 'tails']
@ctb_input = 0.0

class HeadsTails
  def initialize(player)
    puts '\nWelcome to Heads or Tails\n'
    puts '#{player.name}, you have a balance of #{player.wallet.amount}\n'
  end
end

def coin_toss_menu
  puts 'Press 1 to play. A winning bet pays 1 to 1.'
  puts 'Press 2 to return to the main menu.'
  puts 'Press 3 to leave the casino.\n'
end

def coin_toss
  puts '\nHeads or Tails?'
  ct_input = gets.strip.downcase
    if ct_input = 'heads' || 'tails'
    else puts '\nInvalid selection, try again when you are sober.'
      coin_toss
    end
    ct_result = @ct.sample
    puts "\nIt's" ct_result
    if ct_input = ct_result
      then
      puts '\nYou win'
      ct_win
    else
      puts '\nYou lose sucker!'
      coin_toss_menu
    end

while true
  coin_toss_menu
  ctm_input = gets.to_i
  puts
    case ctm_input
      when 1
        puts 'How much money would you like to bet (Ex. 5.50)?\n'
        @ctb_input = gets.to_f
        coin_toss_bet
      else
        CheckInput.new(ctm_input)
    end
end
