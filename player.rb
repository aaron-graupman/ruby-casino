require_relative 'wallet'

class Player
  attr_accessor :name, :age, :wallet

  def initialize
    puts 'What is your name?'
    CheckInput.new(@name = gets.strip, nothing=nil)
    puts 'What is your age?'
    @age = gets.strip.to_i
    puts 'How much money are you playing with?'
    amount = gets.strip.to_f
    @wallet = Wallet.new(amount)
  end

  def check_wallet
    if @wallet.amount <= 0.0
      puts "Sorry you are out of money, please to get a 2nd mortgage."
      exit
    end
  end

end
