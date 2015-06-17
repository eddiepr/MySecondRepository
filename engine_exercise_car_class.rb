require_relative("engine_exercise_engine1_class")
require_relative("engine_exercise_engine2_class")
require_relative("engine_exercise_engine3_class")

class Car
	def initialize(car_sound, engine)
		@car_sound = car_sound
		@engine = engine
	end
	def start
		@engine.sound
		puts @car_sound#other sound that a car makes aside from the engine
	end
end



