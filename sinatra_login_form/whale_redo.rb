require ("sinatra")
require ("sinatra/reloader") if development?

get '/whale_redo' do
	erb(:whale_redo)
end