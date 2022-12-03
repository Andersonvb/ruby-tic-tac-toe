require_relative "./player"
require_relative "./game"

player_1 = Player.new
player_2 = Player.new
game = Game.new

while !game.finished
  loop do
    print "Player 1 turn: "
    player_1_position = gets
    if game.check_position(player_1_position.to_i - 1, player_1.character)
      game.check_position(player_1_position.to_i - 1, player_1.character)
      break
    end
  end
  game.show_game
  break if game.check_win
  loop do
    print "Player 2 turn: "
    player_2_position = gets
    if game.check_position(player_2_position.to_i - 1, player_2.character)
      game.check_position(player_2_position.to_i - 1, player_2.character)
      break
    end
  end

  game.show_game
  break if game.check_win
end