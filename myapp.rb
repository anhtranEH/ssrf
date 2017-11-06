require 'sinatra'
require 'pry'
require 'sinatra/reloader' if development?

class MyApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/view' do
    erb :index
  end

  get '/' do
    'Hello world!'
  end
end
