require 'csv'

class User

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

data = login.csv
data = data.split("\n")
data.each do |user|
  details = user.split(",")
  users << User.new(details[0].strip, details[1].strip, details[3].strip)
  print table
end


user_exists = false
user = nil
users.each do |u|
  user_email = u.get_email
  if user_email == input_email
    user = u
    user_exists = true
  end

end
