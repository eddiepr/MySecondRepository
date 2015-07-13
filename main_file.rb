require_relative("count_class")
require_relative("login_class")

login = Login.new("eddie", "boat")
#login.login
puts "Please login:"
puts "username: >"
username_input = gets.chomp
puts "password: >"
password_input = gets.chomp
login = login.new(username_input, password_input)
login.test_credentials





