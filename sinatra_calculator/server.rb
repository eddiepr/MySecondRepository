require "sinatra"
require 'sinatra/reloader' if development?
require_relative 'lib\calculatorclass'



calc = Calculate.new

get '/calculator' do
	erb (:calculator)
end

post '/result' do
	@first = params[:first].to_f
	@second = params[:second].to_f
	@answer_add = calc.add(@first, @second)
	@answer_sub = calc.subtract(@first, @second)
	@answer_div = calc.divide(@first, @second)
	@answer_mult = calc.multiply(@first, @second)
	erb (:result)
end
