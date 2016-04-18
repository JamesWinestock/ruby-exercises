# # Challenge for after lunch:
#
# Create the (simple) log in process in a terminal application:
#

# 1. create a file that stores the name, email and password of users
require 'csv'

# class User
#
#   def initialize (customer)
#     @customer = customer
#   end
#
#   def store
#     filename = "login.csv"
#     open_file = open(filename, 'a')
#     open_file.write(@customer['name'] + ', ' + @customer['email'] + ', ' + @customer['password'] + ', ')
#     open_file.write("\n")
#     open_file.close
#   end
#
# end
#
# def read_from_file
#     filename = 'login.csv'
#     customer_file = File.open(filename, 'r')
#     customer_file.each {|line| print line }
# end


def read_from_file
    filename = 'login.csv'
    customer_file = File.open(filename, 'r')
    customer_file.each {|line| print line }
    if  == "name" + "email" + "password"
      puts "Welcome James"
    else
      puts "Access Denied"
    end
end

puts "What's your name?"
name = gets.chomp
puts "What's your email?"
email = gets.chomp
puts "What would you like to set as your password?"
password = gets.chomp

# new_user = User.new ({
#   'name' => name,
#   'email' => email,
#   'password' => password,
#   })
#   new_user.store
  read_from_file



# 2. when program is run, ask the user for their email
# 3. ask the user for their password
# 4. if the email and password exist welcome the user using their name
#
# # BONUS: check for email before asking for passwor
