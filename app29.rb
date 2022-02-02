puts 'Enter login'
login = gets.chomp
puts 'Enter password'
password = gets.chomp
if login == "admin" && password == '12345'
  puts 'Доступ к банковской ячейки разрешен.'
end