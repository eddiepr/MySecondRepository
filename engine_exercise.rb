require_relative("engine_exercise_car_class")

jons_car = Car.new(Engine1.new)
jons_car.start

my_car = Car.new(Engine2.new)
my_car.start

elizabeths_car = Car.new(Engine3.new)
elizabeths_car.start

toyota1 = Car.new(Engine2.new)
toyota1.start