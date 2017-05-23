require 'pry'
require 'colorize'

require_relative 'player'
require_relative 'check_input'
require_relative 'heads_tails'
require_relative 'war'


class Casino
  attr_accessor :player

  def initialize
    puts 'Welcome to Ruby Casino'
    @player = Player.new
  end

  def main_menu
    puts "What would you like to do?
      1: Heads and Tails
      2: Roullette
      3: War
      4: Slots
      "
    case gets.strip.to_i
    when 1
      puts "Going to Heads and Tails"
      HeadsTails.new(@player)
    when 2
      Roullette.new(@player)
    when 3
      War.new(@player)
    when 4
    end
  end


  def check_wallet
    if @wallet.amount <= 0.0
      puts "Sorry you are out of money, please to get a 2nd mortgage."
      exit
    end
  end

end

player1 = Casino.new
player1.player.main_menu
#binding.pry
