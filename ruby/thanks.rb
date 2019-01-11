# print: to display value
print("What is the name of the gift giver?")

# `gets`: to get input from user
# the value inputted by the user will be stored to the variable `name`
# `chomp`: to remove the \n
name = gets.chomp

print("What present did they give you?")
present = gets

# `puts`: display value with a new line at the end
puts # there is no value passed, so this will display one line
puts("Dear " + name + ",") # + is used to concatinate value together
puts("Thanks for the "+ present)
