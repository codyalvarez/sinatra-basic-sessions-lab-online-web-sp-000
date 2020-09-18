require "pry"
require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do

    erb :index
  end

  post '/checkout' do
    # binding.pry

    @cart = params[:items][:purchase]

    erb :checkout
  end
end
