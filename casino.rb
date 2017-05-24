require 'pry'
require 'colorize'

require_relative 'player'
require_relative 'check_input'
require_relative 'heads_tails'
require_relative 'war'
#require_relative 'roulette'
require_relative 'slots'
require_relative 'main_menu'
require_relative 'dice'
require_relative 'blackjack'

class Casino
  attr_accessor :player

  def initialize
    puts 'Welcome to our Casino'.cyan
    @player = Player.new
  end

end

player1 = Casino.new
MainMenu.new(player1.player)
#binding.pry
