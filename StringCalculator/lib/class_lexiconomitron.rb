class Lexiconomitron
	def eat_t(string)
		string.delete! "t"  #maybe this will error if there is no t, maybe not
		string.delete! "T" 
		return string
	end
	def shazam(array)
		array.each do |string|
			self.eat_t(string)
			string.reverse!
		end
		return array
	end
end