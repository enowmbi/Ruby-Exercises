require_relative 'coin.rb'
require_relative 'player.rb'

class CoinGame

  def initialize(name_of_player1,name_of_player2)
    @players =[]
    player1 = Player.new(name_of_player1)
    player2 = Player.new(name_of_player2)
    @players.push(player1)
    @players.push(player2)

    @coin = Coin.new 
  end

  def start_game()
    # pick random player and get the players pick
    rand_selection = rand() > 0.5 ? 1: 0
    first_player = @players[rand_selection]
    first_players_prediction = first_player.get_random_coin_option()

    #set second players coin option to the other option 
    index_of_second_player = rand_selection == 0 ? 1:0
    second_player = @players[index_of_second_player]
    second_player.set_coin_option(first_players_prediction)

    # flip coin and get the coin option 
    coin_option = @coin.get_coin_option()

    # call each player to determine the winner 
    first_player.did_player_win?(coin_option) 
    second_player.did_player_win?(coin_option)

  end

  coin_game = CoinGame.new("Enow Mbi","Anita Fombo")
  coin_game.start_game()




end
