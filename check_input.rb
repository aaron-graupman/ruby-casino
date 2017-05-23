require 'pry'
require_relative 'main_menu'
require_relative 'player'

class CheckInput

  def initialize(inp, player)
    begin
      inp = inp.downcase
    rescue
    end

    if inp.empty?
      puts 'Entry was empty.'
    end

    case inp.to_s
    when 'quit', 'q'
      puts 'Quitting'
      exit
    when 'menu', 'm'
      MainMenu.new(player)
    when 'switch', 's'
    when 'wallet', 'w'
      @player.check_wallet

    end
  end
end
