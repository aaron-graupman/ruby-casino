require 'pry'

class CheckInput

  def initialize(inp)
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
      #casino.menu
    when 'switch', 's'
    when 'wallet', 'w'
      #casino.player.wallet.amount

    end
  end
end
