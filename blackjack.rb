class BlackJack
  def initialize(player)
    @deck = Deck.new
    @player = player
    @player_arr = []
    @dealer_arr = []
    puts "\nWelcome to BlackJack\n"
    get_inputs
  end

  def player_deal
    @player_deal = @deck.cards[rand(52)]

    case @player_deal.rate.to_i
    when 11, 12, 13
      @player_deal.rate = 10
    when
      @player_deal.rate = 11
    end
    @player_arr << @player_deal
    puts "deal"
  end

  def dealer_deal
    @dealer_deal = @deck.cards[rand(52)]

    case @dealer_deal.rate.to_i
    when 11, 12, 13
      @dealer_deal.rate = 10
    when 14
      @dealer_deal.rate = 11
    end

    @dealer_arr << @dealer_deal
  end

  def black_menu
    puts "\nPress \"p\" to play."
    puts 'Press "w" to view your wallet.'
    puts 'Press "m" to return to the main menu.'
    puts 'Press "q" to leave the casino.'
    puts
  end

  def get_inputs
    @player.check_wallet
    black_menu
    black_input = gets.strip.downcase
    puts
    case black_input
    when 'p'
      puts "You have \$#{@player.wallet.amount}0 in your wallet.\n"
      puts "How much money would you like to bet (Ex. 4.50)?\n"
      @bet_input = gets.to_f
      @player.check_bet(@bet_input, @player)
      play_blackjack
    else
      CheckInput.new(black_input, @player)
    end
  end

  def inplay_inputs
    puts "Do you want to Hit(h) or Stay(s)"
    @i_input = gets.to_s
  end

  def blackj_call
    puts "calling"
    @p_total = 0
    @player_arr.each do |x|
      @p_total += x.rate.to_i
      if x.rank == 'A' && total > 21
        @p_total << 10
      end
    end

    @player_arr.each do |x|
      if x.rank == 'A' && total > 21
        @p_total << 10
      end
    end

    @d_total = 0
    @dealer_arr.each do |x|
      @d_total += x.rate.to_i
      if x.rank == 'A' && total > 21
        @d_total << 10
      end
    end

    @dealer_arr.each do |x|
      if x.rank == 'A' && total > 21
        @d_total << 10
      end
    end

    if @d_total > 21
      puts "Dealer busts"
    elsif @p_total > 21
      puts "You bust"
    elsif @d_total > @p_total
      puts "Dealer wins"
    elsif @p_total > @d_total
      puts "You win"
    end

  end

  def blackj_win
    @player.wallet.amount += @bet_input
    @player_arr = []
    @dealer_arr = []
    get_inputs
  end

  def blackj_lose
    @player.wallet.amount -= @bet_input
    @player_arr = []
    @dealer_arr = []
    get_inputs
  end

  def play_blackjack
    dealer_deal
    dealer_deal
    puts "Dealers up-card is: " + @dealer_arr[1].rank.to_s
    player_deal
    player_deal
    if @player_arr.count == 2
      puts "You have " +  @player_arr[0].rank.to_s + " and " + @player_arr[1].rank.to_s
    else
      puts "You have "
      @player_arr.each {|x| puts x.rank.to_s}
    end
    puts "Do you want to Hit(h) or Stay(s)"
    case gets.to_s
    when 'h'
      player_deal
      "Dealing..."
      puts @player_arr[3].rank.to_s
      # puts 'You now have'
      # @player_arr.each do |x|
      #
      # end
    when 's'
      blackj_call
    end
  end

end
