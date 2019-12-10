require './player'
require './game'

# init players
players = [Player.new("P1", "Player1", 3), Player.new("P2", "Player2", 3)]

# cycle the player to play the game
players.cycle { |player|
  if player.lives == 0
    puts "----- GAME OVER ------\n Good bye!"
    break
  else
    game = Game.new
    game.question(player)
    game.result(player)
  end
}


