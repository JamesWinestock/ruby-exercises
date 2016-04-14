# Make a class including Customer ID, Name, Address, Phone number, Email address, Bank Balance
require 'csv'

class Customer

      def initialize(customer)
        @customer = customer
      end



      def print_customer_details
        puts "Customer details:"
        puts  "Name: #{@customer ['name']}"
        puts "Address: #{@customer ['address']}"
        puts "Phone number: #{@customer ['phone number']}"
        puts "Email: #{@customer ['email']}"
      end

      def save_to_file
        filename = 'customers.csv'
        open_file = open(filename, 'a')
        open_file.write(@customer['name'] + ', ' + @customer['address'] + ', ' + @customer['phone number'].to_s + ', ' + @customer['email'])
        open_file.write("\n")
        open_file.close
        puts "customer added to file"
        puts "*" * 15
      end
end


    def delete_from_file
        filename = 'customers.csv'
        table = CSV.table(filename)
        puts table
        puts "What name would you like to remove?"
        new_name = gets.chomp
        table.delete_if do |row|
          puts row
          row[0].eql? new_name
        end
        puts table
        File.open(filename, 'w') do |f|
  f.write(table.to_csv)
end
end

  def update_customer_name
      filename = 'customers.csv'
      table = CSV.table(filename)
      puts "What name would you like to update?"
      new_name = gets.chomp
      table.delete_if do |row|
        puts row
        row[0].eql? new_name
      end
      puts table
      File.open(filename, 'w') do |f|
      f.write(table.to_csv)
    end


  end




    def read_from_file
        filename = 'customers.csv'
        customer_file = File.open(filename, 'r')
        customer_file.each {|line| print line }
    end


    def draw_lines()
      puts "*" * 15
    end


    def draw_menu
      draw_lines
        puts "Welcome to the bank"
        puts "What would you like to do today?"
        puts "1. Add customer"
        puts "2. See list of customers"
        puts "3. delete customer"
        puts "4. edit a customer"
        puts "5. make a deposit"
        puts "6. make a withdrawal"
        puts "7. exit"
      end


      while true
        draw_menu
        answer = gets.chomp
        if answer == '1' #add customer
          puts "What is the customer's name?"
          customer_name = gets.chomp
          puts "What is the customer's address"
          customer_address = gets.chomp
          puts "what is the customer's phone number?"
          customer_number = gets.chomp
          puts "What is the customer's email?"
          customer_email = gets.chomp
          draw_lines


          new_customer = Customer.new({
            'name' => customer_name,
            'address' => customer_address,
            'phone number' => customer_number,
            'email' => customer_email})
            new_customer.print_customer_details
            new_customer.save_to_file


        elsif answer == '2' #see list of customers
          read_from_file


        elsif answer == '3' #delete customer
          delete_from_file


        elsif answer == '4' #update customer
          read_from_file
          update_customer_name
          draw_lines
          puts "What is the new customer's name?"
          customer_name = gets.chomp
          puts "What is the new customer's address"
          customer_address = gets.chomp
          puts "what is the new customer's phone number?"
          customer_number = gets.chomp
          puts "What is the new customer's email?"
          customer_email = gets.chomp
          draw_lines
          new_customer = Customer.new({
            'name' => customer_name,
            'address' => customer_address,
            'phone number' => customer_number,
            'email' => customer_email})
          new_customer.print_customer_details
          new_customer.save_to_file


        elsif answer == '5' #make a withdrawal


        elsif answer == '6' #make a deposit


        elsif answer == '7' #exit
          break
        end

  end


#
# #make a menu with the following
# # add customer
# # remove customer
# # edit customer
# # make a deposit
# # make a withdrawal
# # display customer details
#
# puts "add customer (add)"
# puts "remove customer (rem)"
# puts "edit customer (edit)"
# puts "make a deposit (deposit)"
# puts "make a withdrawal (withdrawal)"
# puts "display customer details (display)"
#
# if answer == "remove"
