require ("sinatra")
require ("sinatra/reloader") if development?

get '/gmail' do
	erb(:gmail)
end