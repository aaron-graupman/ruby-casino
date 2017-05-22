require "pry"
require_relative "casino"

class CheckInput
  def check_input(player, inp)
    inp = inp.downcase

    if inp.empty?
      puts "Entry was empty."
    end

    case inp
    when "quit", "q"
      exit
    when "menu", "m"
      casino.menu
    when "switch", "s"
    when "wallet", "w"
      player.player.wallet.amount

    end

  end
end
