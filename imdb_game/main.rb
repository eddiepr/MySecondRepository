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
	dates = movie.each map | movie | 
				movie.release_date
			end
	puts "SEARCH MOVIE #{movie.size}"
	filter = Filter.new
	filter.forage(movie)
	filter.cut
	@pic = filter.posters
	puts "PICS #{@pic.size}"
	
	erb(:movie_displays)
end

get '/checkanswer' do	
	filter.release_date
	redirect "/answer"
	erb(:check_answer)
end


