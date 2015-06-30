require ("sinatra")
require ("sinatra/reloader") if development?

get '/whale' do
	erb(:whale)
end