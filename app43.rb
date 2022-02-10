def hide_password(pass)    
    pass_length = pass.length
    print "Ваш пароль: " + "*" * pass_length
end

puts "Введите пароль!"
pass = gets.chomp
password = hide_password(pass)