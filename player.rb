require_relative 'wallet'

class Player
  attr_accessor :name, :age, :wallet

  def initialize
    puts 'What is your name?'
    CheckInput.new(@name = gets.strip)
    puts 'What is your age?'
    @age = gets.strip.to_i
    puts 'How much money are you playing with?'
    amount = gets
    @wallet = Wallet.new(amount)
  end

end
