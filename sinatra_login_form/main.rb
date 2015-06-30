require ("sinatra")
require ("sinatra/reloader") if development?

get '/login' do
	erb(:login)
end

get '/article_and_comments' do
	erb(:article_and_comments)
end

# get '/exercise' do
# 	erb(:exercise)
# end

get '/bootstrap' do
	erb(:bootstrap_exercise)
end