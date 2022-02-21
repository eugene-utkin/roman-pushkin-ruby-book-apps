print 'Ваш возраст: '
age = gets.to_i
if age < 18
    puts 'Сожалеем, но вам нет 18'
    exit
end

def animate(x, y, z)
    first_spin = rand(1..3)
    second_spin = rand(1..3)
    third_spin = rand(1..3)
    first = 0
    second = 0
    third = 0
    ([(x + 6 * first_spin), (y + 6 * second_spin), (z + 6 * third_spin)].max + 1).times do |i|
        print "\rРезультат: #{first} #{second} #{third}"
        if first_spin > 0
          if first < 5
            first += 1
          elsif first == 5
            first = 0
            first_spin -= 1
          end
        elsif first_spin == 0
          if first < x
            first += 1
          end
        end

        if second_spin > 0
          if second < 5
            second += 1
          elsif second == 5
            second = 0
            second_spin -= 1
          end
        elsif second_spin == 0
          if second < y
            second += 1
          end
        end

        if third_spin > 0
          if third < 5
            third += 1
          elsif third == 5
            third = 0
            third_spin -= 1
          end
        elsif third_spin == 0
          if third < z
            third += 1
          end
        end

        sleep rand(0.2..0.3)
    end
end

balance = 20
loop do
    puts 'Нажмите Enter, чтобы дернуть ручку...'
    gets

    x = rand(0..5)
    y = rand(0..5)
    z = rand(0..5)
    animate(x, y, z)
    
    print "Результат: #{x} #{y} #{z}"
    puts

    if x == 0 && y == 0 && z == 0
        balance = 0
        puts 'Ваш баланс обнулен'
    elsif x == 1 && y == 1 && z == 1
        balance += 10
        puts 'Баланс увеличился на 10 долларов'
    elsif x == 2 && y == 2 && x == 2
        balance += 20
        puts 'Баланс увеличился на 20 долларов'
    else
        balance -= 0.5
        puts 'Баланс уменьшился на 50 центов'
    end

    puts "Ваш баланс: #{balance} долларов"
end