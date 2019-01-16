# grade = Integer(gets)

# if grade >= 75
#     puts "Passed."
# else
#     puts "You failed."
# end

# puts "Finished"

print "Enter an integer: "
x = gets.to_i

if x == 3
    puts "x is 3"
elsif x == 4
    puts "x is 4"
elsif x == 5
    puts "x is 5"
else
    puts "x is not 3, 4 or 5"
end

# case statement equivalent
answer = case x
    when 3
        "x is 3"
    when 4
        "x is 4"
    when 5
        "x is 5"
    else
        "x is not 3, 4 or 5"
end

puts answer