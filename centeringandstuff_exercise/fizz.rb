
multiple = lambda do | number, mult| number % mult == 0
end

multiple_3 = lambda do | number| number % 3 == 0
end

multiple_5 = lambda do | number| number % 5 == 0
end

(1..30).each do |number|
	if (multiple_3.call(number))
		puts "fizz"

	elsif (multiple_5.call(number))
		puts "buzz"
	else
		puts number
	end
end

