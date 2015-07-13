require_relative("car")



cars = [ Car.new("Vroom"), Car.new("Prt prt prt"), Car.new("Peww")]

final = cars.reduce("") do |x, car|
	x + car.sound
end
puts final