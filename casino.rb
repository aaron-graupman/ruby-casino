#wallet will be a class
require 'pry'
require 'colorize'

require_relative 'player'

class Casino
  def initialize
    puts 'Welcome to Ruby Casino'
    @player = Player.new
  end
end

Casino.new
