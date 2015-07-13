class Count
	def initialize(string)
		@string = string
	end
	def count
		number_of_words = string.split.size
		puts number_of_words
	end
end