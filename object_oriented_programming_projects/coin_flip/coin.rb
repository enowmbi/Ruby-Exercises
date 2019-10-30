class Coin 

  @coin_option = '' 

  def initialize
    @coin_values = ['head','tail']
  end


  def get_coin_option
    selected_option = rand() > 0.5 ? 1:0
    @coin_option = @coin_values[selected_option]
  end

end

