class Cell
	def initialize(state, neighbours)
		@state = state # either 1 or 0 for alive or dead
		@neighbours = neighbours # an array that represents the surrounding cells
		@sum = @neighbours.inject(0) do |sum,x| 
			sum + x 
		end
	end

	def live_on
		if @state == 0 && @sum == 3 
			return true
		elsif @state == 1 && (@sum == 2 || @sum == 3)
			return true
		elsif @state == 1 && (@sum < 2)
			return false
		elsif @state == 1 && (@sum > 3)
			return false
		else
			return false
		end
	end

	# def regenerate
	# 	if @state == 0 && @sum == 3 
	# 		return true
	# 	else
	# 		return false
	# 	end
	# end

	# def move_on
	# 	if @state == 1 && (@sum == 2 || @sum == 3)
	# 		return true
	# 	else
	# 		return false
	# 	end
	# end

	# def under_population
	# 	if @state == 1 && (@sum < 2)
	# 		return true
	# 	else
	# 		return false
	# 	end
	# end

	# def over_population
	# 	if @state == 1 && (@sum > 3)
	# 		return true
	# 	else
	# 		return false
	# 	end
	# end
end