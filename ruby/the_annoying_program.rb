# using simple loop 
# loop do
#   print "Hi! How are you feeling?"
#   gets

#   print "Do you want me to ask you again?"
#   answer = gets.chomp

#   break if answer == "STOP"
# end

# using while loop 
answer = nil

while answer != "STOP"
  print "Hi! How are you feeling?"
  gets

  print "Do you want me to ask you again?"
  answer = gets.chomp
end
