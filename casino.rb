#wallet will be a class
require 'pry'
require 'colorize'

require_relative 'player'


class Casino
  attr_accessor :player

  def initialize
    puts 'Welcome to Ruby Casino'
    @player = Player.new
    binding.pry
  end

  def casino_menu
    #casino options
    #game options
    #bankroll - player status
    #quit
    HeadsTails.new(player)
  end
end

Casino.new
