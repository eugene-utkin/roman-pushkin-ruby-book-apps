print 'Loading... Please, wait...'
puts
100_000.times do
    print "\r\\"
    sleep rand(0.05..0.5)
    print "\r|"
    sleep rand(0.05..0.5)
    print "\r/"
    sleep rand(0.05..0.5)
    print "\r-"
    sleep rand(0.05..0.5)
end