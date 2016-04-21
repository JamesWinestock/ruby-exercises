    def add(a,b)
      a + b
    end

    def subtract(a,b)
      (a - b)
      # put your code here
    end

    def multiply(a,b)
      (a * b)
      # put your code here
    end

    def divide(a,b)
      (a / b)
      # put your code here
    end

puts "Welcome to RubyCalc"
print "Enter operation (+, -, *, /): "
# enter your code here
operation = gets.chomp
print "Enter first number: "
a = gets.chomp.to_i
# enter your code here
print "Enter second number: "
b = gets.chomp.to_i

if operation == "+"
  puts "The answer is #{add(a,b)}"
elsif operation == "-"
  puts "The answer is #{subtract(a,b)}"
elsif operation == "*"
  puts "The answer is #{multiply(a,b)}"
elsif operation == "/"
  puts "The answer is #{divide(a,b)}"
else
  puts "What?"
end
