require_relative("scooter_class")
require_relative("plane_class")
require_relative("truck_class")

class WheelTotal
	def initialize(vehicles)
		@vehicles = vehicles
	end
	def display_total_wheels
		@vehicles.reduce(0) { | sum, i | sum + i }
		#@vehicles.reduce{| sum, x| sum + x }
	end
end