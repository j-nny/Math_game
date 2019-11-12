def math_question(player)

  number1 = rand 100
  number2 = rand 100
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