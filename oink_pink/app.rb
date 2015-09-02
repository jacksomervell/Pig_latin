require 'sinatra'
require_relative './models/pig_latinize' 

  get '/:word' do
    "#{Capitalize.cap params[:word]} "
  end