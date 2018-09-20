require 'sinatra/base'

class Birthday < Sinatra::Base
  get '/' do
    erb :index
  end

  run! if app_file == $0

  post '/birthday_suit' do
    p params
    @name = params[:name]
    erb :birthday
  end
end
