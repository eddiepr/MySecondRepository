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
	def oompa_loompa(array)
		mapped_array = array.map do |string|
			if (string.length) < 4
				self.eat_t(string)
			end
		end
		return mapped_array.select {|num| num != nil}
	end
end