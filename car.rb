class Car 
	attr_accessor :sound
	def initialize (sound)
		@sound = sound
	end
	def rev
		puts "#{@sound}."
	end
end

bmw1 = Car.new("vroom")
bmw1.rev

hyundai1 = Car.new("Bureung")
hyundai1.rev


class RacingCar < Car 
	def initialize(sound)
		@sound = sound.upcase
	end
end

honda1 = RacingCar.new("whrrrr")
honda1.rev

car_array = [Car.new("vroom"), Car.new("roooar"), Car.new("vrrrrrr")]
car_array.each do |car| 
	car.rev
end

new_arr = ["Broom", "Meek", "Nyan"]
new_arr = new_arr.map do |item|
	Car.new(item)
end

puts "*******"


	

#


