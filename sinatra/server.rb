require ("sinatra")
require ("sinatra/reloader") if development?
# require("time")
require ("date")
get "/" do 
	'<form action="/name" method="POST">
		<label> Your name:</label>
		<input type="text" name="user_name" placeholder="Insert name here.">
		<br>

		<label>Your favorite food:</label>
		<input type="text" name="user_food" placeholder="Insert your favorite food here">
		<button type="submit">Submit me!</button>
	</form>'
end

get "/pizza" do 
	"pizza"
end

post "/name" do
	"your name is: #{params[:user_name]}
	your favorite food is: #{params[:user_food]}"	
end

get "/yay" do
	"yayyyyyy"
end

get "/greet/:name" do
	@name = params[:name]
	erb(:greet)
end

get "/time/before/:time_ago" do
	@time = DateTime.now
	@time_adjusted = @time - Rational(3600*(params[:time_ago].to_i), 86400)
	@time_adjusted = @time_adjusted.strftime("%I.%M%p")
	# @adjusted = time_from_form.advance(:hours => - params[:time_ago])
	# @time = Time.now.hour - params[:time_ago].to_i
	# @time.strftime("%I.%M%p")
	erb(:time_ago)
end


get "/exercise" do
	users = [["eddie", "fish"], ["mike", "pony"], ["jon", "chickens"]]
	
end












