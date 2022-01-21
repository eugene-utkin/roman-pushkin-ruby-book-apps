puts "Введите свою зарплату в месяц."
monthly_salary = gets.to_i
year_salary = monthly_salary * 12
year_savings = year_salary * 0.15
puts
puts "Ваша зарплата за год: #{year_salary}."
puts "Будет отложено за год: #{year_savings}."
puts "Будет отложено за пять лет: #{year_savings * 5}."