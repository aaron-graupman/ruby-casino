require 'pry'
require 'colorize'

require_relative 'player'
require_relative 'check_input'


class Casino
  attr_accessor :player

  def initialize
    puts 'Welcome to Ruby Casino'
    @player = Player.new
  end

  def casino_menu
    #casino options
    #game options
    #bankroll - player status
    #quit
    #HeadsTails.new(@player)
  end

=begin
  def main_menu
    puts "What would you like to do?
      1: Heads and Tails
      2: Roullette
      3: War
      4: Slots
      "
    case gets.strip
    when "1"
      HeadsTails.new(@player)
    when "2"
      Roullette.new(@player)
    when "3"
      navigateTo Module
    when "4"
      navigateTo Module
    end
  end
=end

  def check_wallet(bet)
    if bet > @player.wallet.amount
    end
  end

end

player1 = Casino.new
binding.pry
