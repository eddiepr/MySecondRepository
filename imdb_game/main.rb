require_relative('lib/class_search.rb')
require ("sinatra")
require ("sinatra/reloader") if development?
require ("imdb")

get '/search' do
	erb(:imdb)
end

post '/guess' do
	word = params[:content]
	p "WORD #{word}"
	search = Imdb::Search.new(word)
	puts "SEARCH #{search.movies.size}"
	movie = search.movies[0..14]
	puts "SEARCH MOVIE #{movie.size}"
	filter = Filter.new
	filter.forage(movie)
	filter.cut
	@pic = filter.posters
	puts "PICS #{@pic.size}"
	
	erb(:movie_displays)
end

post '/answer' do	
	redirect "/answer"
	erb(:check_answer)
end


