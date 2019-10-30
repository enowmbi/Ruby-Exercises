class Player

  @name =''
  @coin_option =''

  def initialize(name)
    @name = name     
  end

  def get_random_coin_option()
    coin_options = ['head','tail']
    @coin_option = rand() > 0.5 ? 1:0
    return coin_options[@coin_option]
  end

  def did_player_win?(winning_flip)
    if @coin_option == winning_flip
      puts "#{@name} is the winner"
    else
      puts "#{@name} is the loser"
    end
  end

  def set_coin_option(opponent_flip)
    if opponent_flip == 'head'
      @coin_option = 'tail'
    else
      @coin_option = 'head'
    end
  end

  def get_coin_option()
    return @coin_option
  end

  def to_s
    return @name
  end

end

