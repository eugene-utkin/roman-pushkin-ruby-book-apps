puts "You want to a buy some land on the Moon"
puts "Enter the required length in meters of this land you want to buy."
length = gets.to_i
puts "Now enter the width in meters."
width = gets.to_i
area = width * length
if area < 50
    price = 1000
end

if area >= 50 && area < 100
    price = 1500
end

if area >= 100
    price = area * 25
end

puts "This is a price of such a land: $#{price}!"