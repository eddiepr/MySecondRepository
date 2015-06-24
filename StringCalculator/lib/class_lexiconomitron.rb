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
		count = 0
		array.each do |string|
			self.eat_t(string)
			if (string.length) >= 4
				array.delete(count)
				#string = ""
			end
			count = count + 1
			string
		end

		# array.map do |string|
		# 	self.eat_t(string)
		# 	if (string.length) >= 4
		# 		array.delete(count)
		# 		#string = ""
		# 	end
		# 	count = count + 1
		# 	string
		# end
		return array
	end
end