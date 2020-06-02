require './environment'

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
      # @pirate = Pirate.new(params[:pirate][:name], params[:pirate][:weight], params[:height])
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |ship_details|
        # Ship.new(ship_details[:name], ship_details[:type], ship_details[:booty])
        Ship.new(ship_details)
      end

      @ships = Ship.all

      erb :'pirates/show'
    end
  end
end
