require ("sinatra")
require ("sinatra/reloader") #if development?
require ("imdb")

get '/search' do
	erb(:imdb)
end

post '/guess' do
	word = params[:content]
	search = Imdb::Search.new(word)
	movies_array = search.movies[0..8]
	@posters_array = movies_array.map do |movie|
		movie.poster
	end
	erb(:movie_displays)
end

post 'checkanswer' do	
	
end


