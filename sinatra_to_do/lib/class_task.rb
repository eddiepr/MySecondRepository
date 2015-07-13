class Task
	attr_accessor :content
	def initialize(content)
		@content = content
		@status = "incomplete"
		#@id = id		
	end	
end