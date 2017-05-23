require 'pry'
require_relative 'check_input'
require_relative 'deck'


class War
  def initialize(player)
    @deck = Deck.new
    @player = player
    puts "\nWelcome to WAR\n"
    puts "#{@player.name}, you have a balance of \$#{@player.wallet.amount}0\n"
    get_inputs
  end

  def deal
    @player_deal = @deck.cards[rand(52)]
    @dealer_deal = @deck.cards[rand(52)]
    @player_val = @player_deal.rate.to_i
    @dealer_val = @dealer_deal.rate.to_i
  end

  def war_menu
    puts 'Press "p" to play. A winning bet pays 1 to 1.'
    puts 'Press "s" to switch current player'
    puts 'Press "m" return to the main menu.'
    puts "Press \"q\" to leave the casino.\n"
  end

  def get_inputs
    @player.check_wallet
    war_menu
    war_input = gets.strip.downcase
    puts
    case war_input
    when 'p'
      puts "How much money would you like to bet (Ex. 4.50)?\n"
      puts "You have \$#{@player.wallet.amount}0 in your wallet.\n"
      @bet_input = gets.to_f
      deal
      war_play
    else
      CheckInput.new(war_input, @player)
    end
  end

  def war_win
    @player.wallet.amount += @bet_input
    get_inputs
  end

  def war_lose
    @player.wallet.amount -= @bet_input
    get_inputs
  end

  def war_play
    puts "\nThe dealer gets: " + @dealer_deal.rank
    puts "\nYou get: " + @player_deal.rank
    if @player_val > @dealer_val
      puts "You WIN!"
      war_win
    elsif @player_val < @dealer_val
      puts "You lose."
      war_lose
    elsif @player_val == @dealer_val
      puts "You tied, no money lost or won."
    end
    get_inputs
  end
end
