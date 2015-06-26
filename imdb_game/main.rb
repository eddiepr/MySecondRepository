require_relative("lib/class_search")
require ("sinatra")
require ("sinatra/reloader") #if development?
require ("imdb")


get '/search' do
	erb(:imdb)
end

post '/guess' do
	word = params[:content]
	search = Filter.new
	search.forage(word)
	@posters_array = search.posters_array
	erb(:movie_displays)
end

post 'checkanswer' do	

end


