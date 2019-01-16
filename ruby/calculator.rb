# Accepts 2 integers
print "Enter an integer: "
num1 = gets.to_i

print "Enter second integer: "
num2 = gets.to_i

# Accepts an operator
#  (+, -, /,  *,  %)
print "Choose operator (+,-,*,/, %): "
operator = gets.chomp

# Calculate results
result = case operator
  when "+"
    term = "sum"
    num1 + num2
  when "-"
    term = "difference"
    num1 - num2
  when "*"
    term = "product"
    num1 * num2
  when "/"
    term = "quotient"
    num1 / num2
  when "%"
    term = "result"
    num1 % num2
  else
    "Invalid operator"
end

puts "The #{term} is #{result}"
