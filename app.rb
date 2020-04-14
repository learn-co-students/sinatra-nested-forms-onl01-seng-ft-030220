require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end
    # code other routes/actions here
    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      @ships = params[:pirate][:ships].map {|ship| Ship.new(ship)}
      
      erb :"pirates/show"
    end

  end
end
