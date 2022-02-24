arr = %w(one two three four five)
arr[1] = 'двундель'
arr.each do |word|
  puts word
end