class Login
	attr_accessor :username
	attr_accessor :password
	def initialize(username, password)
		@username = username
		@password = password
	end
	def test_credentials
		if (username_input == username && password_input == @password)
		puts "Type in some words:"
		words_input = gets.chomp
		count = Count.new(words_input)
		count.count 
	else
		puts "Bad credentials"
	end
end