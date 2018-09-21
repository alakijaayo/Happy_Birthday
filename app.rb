require 'sinatra/base'
require './lib/name'


class Birthday < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  run! if app_file == $0

  post '/birthday' do
    p params
    session[:name] = Name.new(params[:name])
    session[:date] = params[:date]
    session[:month] = params[:month]
    redirect '/birthday_suit'
  end

  get '/birthday_suit' do
    @candidate = session[:name]
    erb :birthday
  end
end
