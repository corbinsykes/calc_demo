require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  "Hello!"
end

get '/hello_world' do
  "Hello, World!"
end

get '/hello_me' do
  @me = "Corbin"
  return "Hello, #{@me}!"
end

get '/hello_you/:name' do
  @name = params[:name]
  return "Hello, #{@name}!"
end

get '/names/:first/:last' do
  @first = params[:first]
  @last = params[:last]
  return "Get money, get paid, #{@first.capitalize} #{@last.capitalize}."
end

get '/calc/add/:first/:second' do
  @first = params[:first].to_i
  @second = params[:second].to_i
  (@first + @second).to_s

end
