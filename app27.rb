puts 'Your age?'
age = gets.to_i
if age >= 18
    puts 'Access granted'
end

if age < 18
    puts 'Доступ запрещен'
    exit
end