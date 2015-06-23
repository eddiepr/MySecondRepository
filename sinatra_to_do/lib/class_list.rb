require_relative("class_task")

class List
	attr_accessor :tasks
	def initialize
		@tasks = []
	end
	def add(task)
		@task = task
		@tasks.push(@task)
		#push into the array
	end
end