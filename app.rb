require 'sinatra'
set    :session_secret, "here be dragons"

get '/' do
  "hello! andrea!"
end

get '/blog' do
  "This is the blog page"
end

get '/pricing' do
  "This is the pricing page"
end

get '/secret' do
  "This is the secret page"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/cat-naming-form' do
  erb(:form)
end
