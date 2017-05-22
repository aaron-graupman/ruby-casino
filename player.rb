class Player
  attr_accessor :name, :age, :gender

  def initialize
    puts 'What is your name?'
    @name = gets.strip
    puts 'What is your age?'
    @age = gets.strip.to_i
    puts 'What is your gender?'
    @gender = gets.strip
  end
end
