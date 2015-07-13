def power_formula(base_chemical)
  sugar = base_chemical * 500
  spice = sugar / 1000
  everything_nice = sugar / 100
  return sugar, spice, everything_nice
end


chemical_x = 10000
blossom, buttercup, bubbles = power_formula(chemical_x)

puts "Using the value #{chemical_x} as our base chemical"
puts "We get values of #{blossom} for blossom, #{buttercup} for buttercup,  and #{bubbles} for bubbles."

puts true && false



def taste(bacon)
	if bacon == "bacon"
		puts "Yummy!!! BACON!!!"
	else
		puts "Urgh..."
	end
end


taste "spinach"
taste "bacon"

numbers = [ "One", 2, "Three"]
puts numbers

numbers.each do |element|
	puts "-> #{element}"
end

my_array = []


my_array << "A"
my_array.push "B"
my_array.push "C"

my_array.delete_at 2

puts my_array
print my_array