require_relative 'coin'
require_relative 'player'

class CoinGame
  @player1_prediction =""
  @player2_prediction =""
  @players =[]
  @random_player = ""
  @winner = ""

  def start_game()
    setup_game()
    get_predictions()
    get_winner()
  end

  private
  def setup_game()
    player1 = Player.new
    @players << player1

    player2 = Player.new
    @players << player2
  end

  def get_random_player(players)
    @random_player = players.sample
  end

  def get_predictions
    get_random_player(@players)
    @player1_prediction = random_player.new.prediction
    @player2_prediction = @player1_prediction == "heads" ? "tails":"heads"
  end

  def get_winner()
      coin = Coin.new
     if @player1_prediction == coin.get_option 
       @winner = "Player 1"
     else
       @winner = "Player 2"
     end
  end

end
