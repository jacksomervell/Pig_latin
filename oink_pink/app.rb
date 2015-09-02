require 'sinatra'
require 'sinatra/reloader' if development?
require_relative './models/pig_latinize' 

  get '/:word' do
    "#{Latinize.pig params[:word]} "
  end