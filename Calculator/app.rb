require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'

get '/' do
  @title = 'Home'
  erb :home
end

post '/calculate' do 
  
  case params[:symbol]
  when '+' then @basic = params[:first_num].to_f + params[:second_num].to_f
  when '-' then @basic = params[:first_num].to_f - params[:second_num].to_f
  when '/' then @basic = params[:first_num].to_f / params[:second_num].to_f
  when '*' then @basic = params[:first_num].to_f * params[:second_num].to_f
  else 
  erb :basic
  end
  erb :basic
end

post '/BMI_calculate' do

  @BMI = (params[:weight].to_f / (params[:height].to_f * params[:height].to_f))

erb :BMI

end

post '/travel' do

  @time = params[:distance].to_f/params[:speed].to_f  

  @actualMPG = (params[:mpg].to_f > 60) ? [0, params[:mpg].to_f - (params[:speed].to_f - 60) * 2].max : params[:mpg].to_f;

  @cost = params[:distance].to_f / (@actualMPG * params[:cost].to_f);

  erb :distance

end


get '/basic' do
  @title = 'Basic Calculator'
  erb :basic
end

get '/Mortgage' do
  @title = 'Mortgage Calculator'
  erb :mortgage
end

get '/BMI' do
  @title = 'BMI Calculator'
  erb :bmi
end

get '/Mileage' do
  @title = 'Mileage calculator'
  erb :distance
end
