def math_question

  number1 = 1
  number2 = 2
  puts "What does #{number1} plus #{number2} equal?"

  print "> "
  answer = $stdin.gets.chomp

  if (answer.to_i == (number1 + number2))
    puts 'yes'
  else
    puts 'no'
  end

end

math_question