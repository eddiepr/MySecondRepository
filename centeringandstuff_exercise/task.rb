Task = Struct.new(:description, :date)


puts "What task do you want to add to your list?"
input = gets.chomp
task = Task.new(input, Time.now)
p task


require "pstore"

store = PStore.new("tasks.pstore")

store.transaction do
	store[:task] = task
end

