require ("sinatra")
require ("sinatra/reloader") if development?

enable (:sessions)

get "/login" do
	users = [["eddie", "fish"], ["mike", "pony"], ["jon", "chickens"]]
	username = params[:Username]
	password = params[:Password]
	#my_proc = Proc.new {(username == users[i][0]) && (password == users[i][1])}
	for i in (0..2)
		#if my_proc.call()
		if ((username == users[0][0]) && (password == users[0][1])) || ((username == users[1][0]) && (password == users[1][1])) || ((username == users[2][0]) && (password == users[2][1]))
			session[:value] = username
		else 
			session[:value] = nil
		end
	end
	erb(:users)
end

post "/logout" do
	if session[:value] != nil
		erb(:sessions_post)
	end
end

# get "/logout" do
# end
