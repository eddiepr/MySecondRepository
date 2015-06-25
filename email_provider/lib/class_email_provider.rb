class WordChecker
	def initialize(provider)
		@provider = provider
	end
	def check_for_words(words)	
		check = nil
		@provider.subject.each do |subject|
			counter = 1
			words.each do |word|
				if subject.include?(word)
					counter += 1
					if counter == words.size
						check = true
					end 
				end
			end 
		end
		if check == true
			return true
		else 
			return false
		end 
	end
end