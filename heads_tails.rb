require_relative 'check_input'


class HeadsTails
  def initialize(player)
    puts '\nWelcome to Heads or Tails\n'
    puts '#{player.name} you have a balance of #{player.wallet.amount}\n'
  end
end

def coin_toss_menu
  puts 'Press 1 to make a bet.'
  puts 'Press 2 to return to the main menu.'
  puts 'Press 3 to leave the casino.\n'
end

while true
  coin_toss_menu
  ctm_input = gets.to_i
  puts
    case ctm_input
      when 1
        puts 'Heads or Tails?\n'
        coin_toss
      else
        CheckInput.new(ctm_input)
