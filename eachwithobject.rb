arr = 
dict = arr.each_with_object({}) do |item, memo|
	memo[item[0].to_sym] = item[1]
end