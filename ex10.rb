class Customer

  def initialize(customer)
    @customer = customer
  end

  def print_customer_details()
    puts "Customer details:"
    puts "Name: #{@customer['name']}"
    puts "Starsign: #{@customer['starsign']}"
    puts "Age: #{@customer['age']}"

  end

  def thanks()
    puts "Thanks for using my program."
      puts "=" * 15
  end

end

james = Customer.new({ "name" => "James", "starsign" => "leo", "age" => 23})


james.print_customer_details()
james.thanks
