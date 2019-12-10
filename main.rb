require './player'
require './game'
require 'colorize'

# init players
players = [Player.new("P1", "Player1", 3), Player.new("P2", "Player2", 3)]

# cycle the player to play the game
players.cycle { |player|
  puts "~~ WELCOME TO THE GAME ~~"
  if players[0].lives == 0 ||  players[1].lives == 0
    if players[0].lives == 0
      puts "#{players[1].name} wins the game with a score of #{players[1].lives}/3"
    else
      puts "#{players[0].name} wins the game with a score of #{players[0].lives}/3"
    end
    puts "----- GAME OVER -----\nGood bye!"
    break
  else
    if ( players[0].lives || players[1].lives ) > 0
      puts "----- NEW TURN -----"
    else
    end
    game = Game.new
    game.question(player)
    game.result(player)
    puts "#{players[0].id}: #{players[0].lives}/3 vs #{players[1].id}: #{players[1].lives}/3"
  end
}


