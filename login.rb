require 'csv'

class User
     def initialize(name, email, password)
        @name = name
        @email = email
        @password = password
        end


      def get_name
          return @name
        end

        def set_name name
          @name = name
        end

        def get_email
          return @email
        end

        def set_email
          @email = email
        end

        def check_password password
          return true if password == @password
          return false
        end
end

      file = File.open('login.csv')
      data = file.read
      file.close

users=[]


data = data.split("\n")
data.each do |user|
  details = user.split(",")
  users << User.new(details[0].strip, details[1].strip, details[2].strip)
end

puts "What is your login email?"
login_email = gets.chomp


user_exists = false
user = nil
users.each do |u|
  user_email = u.get_email
  if user_email == login_email
    user = u
    user_exists = true
  end

  if user_exists
    puts "Hello #{user.get_name}, please enter your password."
    while true
      password = gets.chomp
      if user.check_password password
        puts "#{user.get_name}, you are now logged in."
        break
      else
        puts "Password was incorrect, please try again."
      end
    end
  else
    puts "Your do not have an account with us."
  end

end
