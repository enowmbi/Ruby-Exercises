class Coin 

  @coin_option = ""

  def flip 
    get_random_option
  end

  private
  def get_random_option
    options = ['heads','tails']
    @coin_option = options.sample
  end

end
