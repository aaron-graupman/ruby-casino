require 'pry'
require 'colorize'
require_relative 'main_menu'


class CheckInput

  def initialize(inp, player=nil)
    begin
      inp = inp.downcase

      if inp.empty?
        puts 'Entry was empty.'
      end
    rescue
    end

    case inp.to_s
    when 'quit', 'q'
      puts 'Quitting, thank you come again.'.cyan
      exit
    when 'menu', 'm'
      MainMenu.new(player)
    when 'switch', 's'
    when 'wallet', 'w'
      player.check_wallet
    end
  end
end
