class Car
	@@total = 0

	def initialize(color)
		@color = color
		@@total = @@total + 1
	end

	def honk
		puts "Beeeeeeeep!"
	end

	def print_color
		puts @color	
	end

	def print_total
		puts "So far we've got #{@@total} cars."
	end
end

my_car = Car.new "red"
other_car = Car.new "rainbow"

other_car.print_total