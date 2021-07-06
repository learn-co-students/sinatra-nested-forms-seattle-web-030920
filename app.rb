require './environment'

module FormsLab
  class App < Sinatra::Base
    # code other routes/actions here
    get '/' do 
      erb :root
    end 

    get '/new' do 
      erb :"/pirates/new" 
    end

    post '/pirates' do 
      @pirate = Pirate.new(params[:pirate])
      
      params[:pirate][:ships].each{|ship_hash_details|
        Ship.new(ship_hash_details)
      }

      @ships = Ship.all 

      erb :"pirates/show"
    end 

  end
end
