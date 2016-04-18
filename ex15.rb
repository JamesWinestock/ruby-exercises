require 'csv'

class Customer

attr_reader :name, :email, :password

   def initialize(name, email, password)
      @name = name
      @email = email
      @password = password
      end

      def print_details
        puts @name
        puts @email
        puts @password
      end
end

james = Customer.new("James", "james.winestock@gmail.com", "JamesJames")

puts "name: #{james.name}"
puts "email: #{james.email}"
puts "password: #{james.password}"
puts "What are the customer's new details?"
puts "Name?"
new_name = gets.chomp
puts "Email?"
new_email = gets.chomp
puts "Password?"
new_password = gets.chomp


james.name = new_name
james.email = new_email
james.password = new_password
puts "name: #{james.name}"
puts "email: #{james.email}"
puts "password: #{james.password}"

file = 'login.csv'
temp_file = File.open(file, 'a')
temp_file.write(james.name + ' ' + james.email + ' ' + pedro.password)
temp_file.close
