require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      # binding.pry
      # @pirate = Pirate.new(name: params[:pirate][:name], weight: params[:pirate][:weight], height: params[:pirate][:height])
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |ship_details|
        # Ship.new(name: ship_details[:name], type: ship_details[:type], booty: ship_details[:booty])
        Ship.new(ship_details)
      end

      @ships = Ship.all

      erb :'pirates/show'
    end
  end
end
