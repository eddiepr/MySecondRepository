require_relative("wheel_total_class")

total_array = WheelTotal.new([Scooter.new, Plane.new, Truck.new])
total_array.display_total_wheels