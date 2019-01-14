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

# 3. Displaying data using array variable
puts "Person 1"
puts "Name      : #{persons[0][:name]}"
puts "Age       : #{persons[0][:age]}"
puts "Address   : #{persons[0][:address]}"
puts
puts "Person 2"
puts "Name      : #{persons[1][:name]}"
puts "Age       : #{persons[1][:age]}"
puts "Address   : #{persons[1][:address]}"
puts
puts "Person 3"
puts "Name      : #{persons[2][:name]}"
puts "Age       : #{persons[2][:age]}"
puts "Address   : #{persons[2][:address]}"
