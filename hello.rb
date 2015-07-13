puts "Hello, world!"
operation_result = 12*34
puts "operation result is "
puts operation_result
a_string = "this is a string"
another_string = 'this is also a string'
multiline_string = """ A long djhfrdjfjd
 dfjdjfdjf
 djfkjdg kdgf kjfgkfgj kdfjgfkjg
 fjgkfjgfkjg jkfjgfkg
 jkfgkfjgk  jdkrjdjfdjfjdf
 djfdjkg
 """
 puts multiline_string
 puts "Hello\nworld"
 # comment 
 name = "Eric"
 puts "Hi #{name}"
 puts "What's your name?"
 name = gets.chomp
 puts "Hello, #{name}."
 puts "Give me a number"
 first_number = gets.chomp.to_i
 puts "Give me another number"
 second_number = gets.chomp.to_i
 puts "#{first_number} x #{second_number} = #{first_number * second_number}"
 file_contents = IO.read("index.html")
 puts "The source file contains: #{file_contents}"
 puts "What's your name?"
 name = gets.chomp
 IO.write('name.txt', name)

 def greet(name)
 	puts "Hi, #{name}!"
end

greet("Rafa")
greet("Xavi")
greet("Isra")
greet("Fernando")

def square(number)
	return number * number
end

def multiply(a,b)
	return a*b
end

puts(square(22))
puts(square(1))
puts(square(10))

puts(multiply(3,2))
puts(multiply(10,3))

puts 10 + 13
puts "desserts".reverse

def power_formula(base_chemical)
	sugar = base_chemical * 500
	spice = sugar / 1000
	everything_nice = sugar / 100
	return sugar, spice, everything_nice
end


chemical_x = 10000
blossom, buttercup, bubbles = power_formula(chemical_x)

puts "Using the value #{chemical_x} as our base chemical"
puts "We get values of #{blossom} for blossom, #{buttercup} for buttercup,  and #{bubbles} for bubbles."

