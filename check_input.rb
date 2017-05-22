require "pry"
require_relative "casino"

class CheckInput
  def check_input(inp)
    inp = inp.downcase

    if inp.empty?
      puts "Entry was empty."
    end

    case inp
    when "quit", "q", 3
      exit
    when "menu", 2
      casino.menu
    else
      puts "Invalid input."
    end

  end
end
