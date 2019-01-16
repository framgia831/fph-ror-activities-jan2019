print("What time is it? : ")
time = gets.to_i

if time > 0 && time < 12
  puts "Good morning"
elsif time == 12
  puts "Good noon"
elsif time > 12 && time < 17
  puts "Good afternoon"
elsif time > 17 && time < 24
  puts "Good evening"
elsif time ==  24
  puts "Why are you not sleeping yet?"
else
  puts "Invalid input"
end
