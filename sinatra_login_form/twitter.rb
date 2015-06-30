require ("sinatra")
require ("sinatra/reloader") if development?

get '/twitter' do
	erb(:twitter)
end