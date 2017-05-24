class MainMenu

  def initialize(player)
    @player = player
    puts "What would you like to do?
      1: Heads and Tails
      2: War
      3: Slots
      4: Black Jack
      5: Se7en
      "
    input = gets.strip.to_i
    CheckInput.new(input)
    case input
    when 1
      puts "Going to Heads or Tails."
      HeadsTails.new(@player)
    when 2
      puts 'Going to War.'
      War.new(@player)
    when 3
      puts 'Going to Slots.'
      Slots.new(@player)
    when 4
      puts 'Going to Black Jack.'
      BlackJack.new(@player)
    when 5
      puts 'Going to Se7en.'
      Dice.new(@player)
    end
  end
end
