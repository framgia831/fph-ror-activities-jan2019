puts "Enter an integer: "
number = gets.to_i % 2

if number == 0
  puts "The number is even"
elsif number == 1
  puts "The number is odd"
end