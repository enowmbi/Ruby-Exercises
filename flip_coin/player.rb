class Player

  attr_writer :prediction

  def get_prediction
    @prediction = get_random_prediction
  end

  private 
  def get_random_prediction
    predictions = ["heads","tails"]
    predictions.sample
  end
end
