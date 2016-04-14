class Contact

  def initialize(name, address, number)
    @name = name
    @address = address
    @number = number
  end

  def print_contact_details()
    puts "Contact details:"
    puts "Name: #{@name}"
    puts "Address: #{@address}"
    puts "Number: #{@number}"
    puts "Thank you."

  end


end
puts "What's your name?"
name = gets.chomp
puts "What's your address?"
address = gets.chomp
puts "What's your phone number?"
number = gets.chomp


james = Contact.new(name, address, number)

  james.print_contact_details

  
