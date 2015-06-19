class Chart
	def initialize(title, rating)
		@title = title
		@rating = rating
	end
	def display
		for i in (9..1) do
			print "|"
			if @rating >= i
				print "*"
			end
			print " |"
		end
	end
end