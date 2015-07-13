#require_relative("task.rb")
require "pstore"
Task = Struct.new(:description, :date)

store = PStore.new("tasks.pstore")

task = Task.new(task)
# p task
task = store.transaction do 
	puts store[:task]
end



#require "pstore"





# store.transaction do
# 	store[:task] = task
# end