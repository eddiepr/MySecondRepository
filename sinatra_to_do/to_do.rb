require ("sinatra")
require ('sinatra/reloader') if development?
require_relative ('lib/class_task')
require_relative ('lib/class_list')

list = List.new


get '/addnewtasks' do
	erb(:add_new_task)
	#Task.new(task )
end

# get '/addnewtasks' do
# 	erb(:list)
# end

post "/list" do 
	content = params[:content]
	
	task = Task.new(content)
	#list = task.tasks

	list.add(task)
	# list_display = list.each do |task|
	# 	task
	# end 
	@list_array = list.tasks

	erb(:list)
end