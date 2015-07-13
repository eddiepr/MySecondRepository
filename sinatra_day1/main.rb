require ("sinatra")
require ("sinatra/reloader") if development?

get '/exercise' do
	erb(:exercise)
end

get '/exercise_pasted' do
	erb(:exercise_pasted)
end