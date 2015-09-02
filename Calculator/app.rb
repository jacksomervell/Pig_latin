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

  @BMI = (([:weight] / [:height] * [:height]) * 703)

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

get '/mileage' do
  @title = 'Mileage calculator'
  erb :mileage
end
