puts 'Do you have a college education?'
edu = gets.chomp.downcase
puts 'Do you have a previous experience in programming? (y/n)'
exp = gets.chomp.downcase
puts 'Do you have more than 3 years of practice? (y/n)'
prac = gets.chomp.downcase

points = 0

if edu == 'y'
  points += 1
end

if exp == 'y'
  points += 1
end

if prac == 'y'
  points += 1
end

if points >= 2
  puts "Welcome to USA!"
end