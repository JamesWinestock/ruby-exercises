# require 'csv'
#
# customer = CSV.read('customers.csv')
#
# CSV.foreach('customers.csv') do |row|
#   puts row.inspect
# end
#
# customer_names = Array.new
# CSV.foreach('customers.csv') do |row|
#   customer_names = row[1]
# end
#
# CSV.open('customers.csv', 'a') do |csv|
#   csv << ["1"]
#   csv << ["2"]
#   guests.delete(1)
# end

# def draw_menu
#     puts "Welcome to the bank"
#     puts "What would you like to do today?"
#     puts "1. Add customer"
#     puts "2. See list of customers"
#     puts "3. delete customer"
#     puts "4. edit a customer"
#     puts "5. make a deposit"
#     puts "6. make a withdrawal"
#     puts "7. exit"
#   end
#
# draw_menu
#

# filename = 'customers.csv'
# CSV.open(filename, 'w') do |csv|
# csv << [""]
# end
#
#
# filename = 'customers.csv'
# table = CSV.table(filename)
# puts table
# puts "What name would you like to remove?"
# new_name = gets.chomp
# table.delete_if do |row|
#   puts row
#   row[0].eql? new_name
# end
# puts table
# File.open(filename, 'w') do |f|
# f.write(table.to_csv)
# end
#
# puts "What is the new customer's name?"
# customer_name = gets.chomp
# puts "What is the new customer's address"
# customer_address = gets.chomp
# puts "what is the new customer's phone number?"
# customer_number = gets.chomp
# puts "What is the new customer's email?"
# customer_email = gets.chomp
#
#
# new_customer = Customer.new({
#   'name' => customer_name,
#   'address' => customer_address,
#   'phone number' => customer_number,
#   'email' => customer_email})
#   new_customer.print_customer_details
#   new_customer.save_to_file
# CSV.open('customers.csv', 'a') do |csv|
#   csv << ["1"]
#   csv << ["2"]
#   csv.delete(1)
# end
#
#
# # customers = CSV.foreach('customers.csv', headers:true) do |row|
#   customers.delete(0) # For each row, give me the cell that is under the 'Name' column
# end

# This is my change
