@arr1 = Array.new(10, 1)
@arr2 = Array.new(10, 1)

def check_stats
  survivors1 = @arr1.count { |x| x == 1 }
  survivors2 = @arr2.count { |x| x == 1 }

  puts "Robots left in first team: #{survivors1}"

  random_sleep

  puts "Robots left in second team: #{survivors2}"

  if survivors1 == 0
    puts "Team 2 wins!"
    exit
  elsif survivors2 == 0
    puts "Team 1 wins!"
    exit
  end
end

def random_sleep
  sleep rand(0.3..1.5)
end

loop do
    check_stats

    random_sleep
  
    puts 'First team attacks!'
    random_sleep
    dice = rand(0..9)
    if @arr2[dice] == 1
      puts "Robot with index #{dice} is destroyed."
      @arr2[dice] = 0
    elsif @arr2[dice] == 0
      puts "Miss!"
    end

    random_sleep

    puts 'Second team attacks!'
    random_sleep
    dice = rand(0..9)
    if @arr1[dice] == 1
      puts "Robot with index #{dice} is destroyed."
      @arr1[dice] = 0
    elsif @arr1[dice] == 0
      puts "Miss!"
    end
  
    random_sleep
  
  end