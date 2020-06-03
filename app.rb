require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do 
      erb :root
    end

    get '/new' do 
      erb :'pirates/new'
    end 

    post '/pirates' do 
      #creates pirate instance using the form inputs - params
      @pirate = Pirate.new(params[:pirate])

      #creates ship instance using form inputs - params
      #we are looping through bc there are multiple ships so we are 
      #creating 2 instances with each param
      params[:pirate][:ships].each do |prm|
        Ship.new(prm)
      end
      @ships = Ship.all

      erb :'pirates/show'
    end

  end
end
