sum = 500000
procent = 0
total_procent = 0

30.times do |i|
    sum = sum - 16666
    procent = sum * 0.04
    total_procent += procent
    puts "Год #{i + 1}, осталось выплатить #{sum}.
Проценты за год: #{procent}.
Проценты за всё время: #{total_procent}."
    puts
end