puts "Запускаем ракеты..."
5.downto(1) { |i| puts "Осталось #{i} секунд" }
puts "Ба-бах!"

puts

puts "Запускаем ракеты..."
5.downto(1) do |i|
    puts "Осталось #{i} секунд"
end
puts "Ба-бах!"