subject = ["Let's sync tomorrow",
	"Urgent: we need to sync",
	"dinner"
]

subject1 = ["Let's sync tomorrow",
	"Urgent: we need to sync: need your reply",
	"Hey",
	""
]


words = ["sync", "urgent", "reply"]
check = nil

subject1.each do |subject|
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
	puts "true"
else 
	puts "false"
end 
