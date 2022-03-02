@arr1 = Array.new(10, 100)
@arr2 = Array.new(10, 100)

def check_stats
  survivors1 = @arr1.count { |x| x > 0 }
  survivors2 = @arr2.count { |x| x > 0 }

  puts "Robots left in first team: #{survivors1}"

  time_to_sleep

  puts "Robots left in second team: #{survivors2}"

  if survivors1 == 0
    puts "Team 2 wins!"
    exit
  elsif survivors2 == 0
    puts "Team 1 wins!"
    exit
  end
end

def time_to_sleep
  sleep(1)
end

loop do
    check_stats

    time_to_sleep
  
    puts 'First team attacks!'
    time_to_sleep
    dice = rand(0..9)
    if @arr2[dice] > 0
      damage = rand(30..100)
      @arr2[dice] -= damage
      puts "Robot with index #{dice} was hit for #{damage} damage points."
      time_to_sleep
      if @arr2[dice] > 0
        puts "His health is reduced to #{@arr2[dice]} points."
      else
        puts "Robot with index #{dice} is destroyed."
      end
    elsif @arr2[dice] == 0
      puts "Miss!"
    end

    time_to_sleep

    puts 'Second team attacks!'
    time_to_sleep
    dice = rand(0..9)
    if @arr1[dice] > 0
      damage = rand(30..100)
      @arr1[dice] -= damage
      puts "Robot with index #{dice} was hit for #{damage} damage points."
      time_to_sleep
      if @arr1[dice] > 0
        puts "His health is reduced to #{@arr1[dice]} points."
      else
        @arr1[dice] = 0
        puts "Robot with index #{dice} is destroyed."
      end
    elsif @arr1[dice] == 0
      puts "Miss!"
    end
  
    time_to_sleep

    puts "First team: #{@arr1}."

    time_to_sleep

    puts "Second team: #{@arr2}."

    time_to_sleep

    puts
  
  end