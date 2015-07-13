class Car
  attr_accessor :colorvar

  def initialize(colorpar)
    @colorvar = colorpar
  end

  def honk
    puts "Beeeeeeeeep!"
  end
end

my_car = Car.new "yellow"
other_car = Car.new "brown"

my_car.colorvar = "grey"

puts my_car.colorvar
puts other_car.colorvar