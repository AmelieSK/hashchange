require "sinatra"

get '/' do
  @name = params[:name]
  erb(:index)
end

get '/Amy' do
  'Hello Amy!'
end

get '/secret' do
  'It is a secret'
end

get '/random-cat' do
  @name = ['Kiki', 'Patsy'].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end
