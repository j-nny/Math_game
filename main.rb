class Player
  attr_accessor :player, :score

  def initialize(player, score)
    @player = player
    @score = score
  end

end


# Asks a math question
def math_question(player)

  number1 = rand 10
  number2 = rand 10
  puts "What does #{number1} plus #{number2} equal?"
  
  print "> "
  answer = $stdin.gets.chomp
  
  if (answer.to_i == (number1 + number2))
    puts "#{player.player}: YES! You are correct"
    puts "P1: #{$p1.score}/3 vs P2: #{$p2.score}/3"
  else
    puts "#{player.player}: Seriously? No!"
    player.score -= 1
    puts "P1: #{$p1.score}/3 vs P2: #{$p2.score}/3"
  end

end

def game_board
  
  $p1 = Player.new("Player 1", 2)
  $p2 = Player.new("Player 2", 3)
  
  turn = $p1

  math_question(turn)

  # prompt next player
  turn == $p1 ? turn = $p2 : turn = $p1

end

game_board