require_relative 'wallet'

class Player
  attr_accessor :name, :age, :gender, :wallet

  def initialize
    puts 'What is your name?'
    @name = gets.strip
    puts 'What is your age?'
    @age = gets.strip.to_i
    puts 'What is your gender?'
    @gender = gets.strip
    puts 'How much money are you playing with?'
    amount = gets.to_f
    @wallet = Wallet.new(amount)
  end
end
