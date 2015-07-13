require("sinatra")

get "/film" do
	erb (:film)
end

post "/film" do
	erb(:film_post)
end