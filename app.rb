require "pry"
require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do

    erb :index
  end

  post '/checkout' do
    # binding.pry

    @cart = params[:item][:purchase]
    #
    # params[:item][:purchase].each do |i|
    #   @cart << i[:item]
    # end
    #
    #
    erb :checkout
  end
end
