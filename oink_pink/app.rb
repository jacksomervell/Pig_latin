require 'sinatra'
require 'sinatra/reloader' if development?
require_relative './models/pig_latinize' 

  get '/' do
    @title = 'Home'
    erb :home
  end

  get '/:word' do
    "#{Latinize.pig params[:word]} "
  end

  post '/translate' do
    @pig_text = Latinize.pig params[:text]

  end 
