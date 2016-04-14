def add(a,b)
  a + b
  # put your code here
end

def subtract(a,b)
  a - b
  # put your code here
end

def multiply(a,b)
  a * b
  # put your code here
end

def divide(a,b)
  # put your code here
end

puts "Welcome to RubyCalc"
print "Enter operation (+, -, *, /): "
# enter your code here
operation = gets.chomp
print "Enter first number: "
a = gets.chomp
# enter your code here
print "Enter second number: "
b = gets.chomp
# enter your code here

# do calculation
if operation == "+"
  puts add(a,b)
elsif operation == "-"
  subtract
elsif operation == "*"
  multiply
end

puts "The result is: #{}"
