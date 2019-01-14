puts("Please enter your grades:")

print("Math grade:")
math = gets.to_i

print("History grade:")
history = gets.to_i

print("English grade:")
english = gets.to_i

print("Science grade:")
science = gets.to_i

average = (math + history + english + science).to_f / 4
puts("Your average is #{average}")