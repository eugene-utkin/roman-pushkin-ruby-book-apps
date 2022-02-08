number = rand(1..1000000)
print 'Привет! Я загадал число от 1 до 1000000, попробуйте угадать: '
loop do
  input = gets.to_i

  if input == number
    puts 'Правильно!'
    exit
  else
    if input > number
      print 'Искомое число меньше вашего ответа. '
    else
      print 'Искомое число больше вашего ответа. '
    end
    print 'Попробуйте еще раз: '
  end
end