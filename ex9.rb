class Customer

  def initialize(customer)
    @customer = customer
  end

  def print_customer_details()
    puts "Customer details:"
    puts "Name: #{@customer['name']}"
    puts "Starsign: #{@customer['starsign']}"
    puts "Age: #{@customer['age']}"
    puts "=" * 15
  end

  def update_customer_name(new_name)
    @customer['name'] = new_name
  end

  def get_name()
    return @customer['name']
  end




james = Customer.new({ "name" => "James", "starsign" => "leo", "age" => 23})

bob = Customer.new({ "name" => "Bob", "starsign" => "libra", "age" => 27})

customers = [james, bob]
customers.each do |customer|
  customer.print_customer_details()
end

    puts "\n\n"
    puts "Would you like to change a customer name? Y/N"
    print "> "
    answer = gets.chomp
    if answer == "Y"
      puts "Which customer would you like to update? James or Bob?"
      which_customer = gets.chomp
      which_customer = "James"
      puts "What is the new name?"
      new_name = gets.chomp
      customers.each do |customer|
        if customer.get_name == "James"
          customer.update_customer_name(which_customer)
          puts customer.print_customer_details()
        end
end

end

      end
