class FizzBuzz
	def initialize(numbers)
		@numbers = numbers
	end
	def multiple(multiple, number)
		@multiple = multiple
		@number = number
		if @number % @multiple  == 0
			return true
		else 
			return false
		end
	end
	def line(number)
		end_string = ""
		@numbers.each do |divisor, word|
			# divisor = 5
			# word = "Buzz"
			if number % divisor == 0 
				end_string = end_string + word + " "
			end
		end
		end_string.chop! 
		if end_string != ""
			return end_string # - " "
		else
			return number.to_s	
		end
	end
end