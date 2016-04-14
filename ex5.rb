puts "You enter a room, a man is standing in the middle. You know that he has $5000 and that if you give him the correct password he'll give it to you. The password is either 'hello' or 'goodbye'."
print "> "
password = gets.chomp.downcase

if password == "goodbye" 
  puts "You won $5000!"
elsif password == "hello"
  puts "You're a big loser..."
else
  puts "Are you dumb?"
end
