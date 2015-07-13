class Starship 
	#need to use files
	#@@total = 0
	IO.write('total_ships.txt', 0)

attr_reader(:name, :speed, :captain)

	def initialize(name)
		number =IO.read('total_ships.txt').to_i
		#@@total = @@total + 1
		@name = name
		IO.write('total_ships.txt', total + 1)
	end
	
	def take_off
		puts "Starship is now taking off! Swoosh."
	
	end

	def fly
		puts "Starship is flying!  Pshhhh."
	
	end

	def land
		puts "Landing starship now.  Buuuurm"
	end

	# Accessor method
	def name
		return @name
	end

	def self.warp_research
		puts "Researching warp research"
	end

	def self.total
		#return @@total
		return 
	end

	def land 
		super
		puts "Splash!"
	end
end

ship = Starship.new("Starfox")
ship.take_off
puts "The Starship #{ship.name} has been christened"


ship2 = Starship.new("Vlarb")
puts puts "The Starship #{ship2.name} has been christened"

ship3 = Starship.new("Bowser")

puts "So far we've got #{Starship.total} starships"


Starship.warp_research