class BlackJack
  def initialize(player)
    @deck = Deck.new
    @player = player
    puts "\nWelcome to BlackJack\n"
    get_inputs
  end

  def deal
    @player_deal = @deck.cards[rand(52)]
    @dealer_deal = @deck.cards[rand(52)]
    @player_val = @player_deal.rate.to_i
    @dealer_val = @dealer_deal.rate.to_i
    play_blackjack
  end

  def blackjack_menu
    puts "\nPress \"p\" to play. A winning bet pays 1 to 1."
    puts 'Press "w" to view your wallet.'
    puts 'Press "s" to switch profiles.'
    puts 'Press "m" to return to the main menu.'
    puts 'Press "q" to leave the casino.'
    puts
  end

  def get_inputs
    @player.check_wallet
    black_menu
    black_input = gets.strip.downcase
    puts
    case war_input
    when 'p'
      puts "How much money would you like to bet (Ex. 4.50)?\n"
      puts "You have \$#{@player.wallet.amount}0 in your wallet.\n"
      @bet_input = gets.to_f
      deal
    else
      CheckInput.new(black_input, @player)
    end

    def blackj_win
      @player.wallet.amount += @bet_input
      get_inputs
    end

    def blackj_lose
      @player.wallet.amount -= @bet_input
      get_inputs
    end

    def play_blackjack
      puts "\nThe dealer gets: " + @dealer_deal.rank
      puts "\nYou get: " + @player_deal.rank
      if @player_val > @dealer_val
        puts "\nYou WIN!".green
        blackj_win
      elsif @player_val < @dealer_val
        puts "\nYou lose.".red
        blackj_lose
      elsif @player_val == @dealer_val

      end
      get_inputs
    end
  end
