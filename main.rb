require './players.rb'
require './question.rb'

def game_board
  
  $p1 = Player.new("Player 1", 3)
  $p2 = Player.new("Player 2", 3)
  
  turn = $p1

  while ($p1.score > 0 && $p2.score > 0) do

    puts "----- NEW TURN -----"
    math_question(turn)

    # prompt next player
    turn == $p1 ? turn = $p2 : turn = $p1

  end

  puts "#{turn.player} wins with a score of #{turn.score}/3"
  puts "----- GAME OVER -----"
  puts "Good bye!"

end

game_board