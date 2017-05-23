class MainMenu

  def initialize(player)
    @player = player
    puts "What would you like to do?
      1: Heads and Tails
      2: Roulette
      3: War
      4: Slots
      "
    case gets.strip.to_i
    when 1
      puts "Going to Heads or Tails."
      HeadsTails.new(@player)
    when 2
      puts 'Going to Roulette.'
      Roulette.new(@player)
    when 3
      puts 'Going to War.'
      War.new(@player)
    when 4
      puts 'Going to Slots.'
      Slots.new(@player)
    end
  end
end
