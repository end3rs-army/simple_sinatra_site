require 'sass'
require 'slim'
require 'sinatra'
require 'sinatra/fix_951'
require 'sinatra/reloader' if development?

set :views, 'templates'

get('/styles.css'){ scss :styles }

get '/' do
  @title = "New York, New York is home"
  slim :home
end

get '/contact' do
  @title = "Contact"
  slim :contact
end

get '/about' do
  @title = "About this Website"
  slim :about
end

not_found do
  slim :missing
end
