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
end

Casino.new
