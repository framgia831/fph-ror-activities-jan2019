# Multiple hash values inside an array
persons = [
  {
    name: "Yutaka",
    age: 53,
    address: "Japan"
  },
  {
    name: "Charlotte",
    age: 23,
    address: "Leyte"
  },
  {
    name: "Hani",
    age: 23,
    address: "Cebu"
  }
]

# Displaying items in an array using each loop
x = 1
persons.each do |person|
  puts "Person #{x}"
  puts "Name      : #{person[:name]}"
  puts "Age       : #{person[:age]}"
  puts "Address   : #{person[:address]}"
  puts

  x = x + 1
end

# Displaying each data in array using index numbers
# puts "Person 1"
# puts "Name      : #{persons[0][:name]}"
# puts "Age       : #{persons[0][:age]}"
# puts "Address   : #{persons[0][:address]}"
# puts
# puts "Person 2"
# puts "Name      : #{persons[1][:name]}"
# puts "Age       : #{persons[1][:age]}"
# puts "Address   : #{persons[1][:address]}"
# puts
# puts "Person 3"
# puts "Name      : #{persons[2][:name]}"
# puts "Age       : #{persons[2][:age]}"
# puts "Address   : #{persons[2][:address]}"
