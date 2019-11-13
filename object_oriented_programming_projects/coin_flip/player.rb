class Player

  @name =''
  @coin_option =''

  def initialize(name)
    @name = name     
  end

  def get_random_coin_option()
    coin_options = ['head','tail']
    @coin_option = coin_options[rand() > 0.5 ? 1:0]
    return @coin_option
  end

  def did_player_win?(winning_flip)
    if @coin_option == winning_flip
      puts "#{@name} Won with a flip of #{@coin_option}"
    else
      puts "#{@name} Lost with a flip of #{@coin_option}"
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

  def get_name
    return @name
  end

end

