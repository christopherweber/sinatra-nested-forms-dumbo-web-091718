require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get "/" do
      "Welcome to the Nested Forms Lab! let's navigate to the '/new'"
    end

    get "/new" do
      erb :'pirates/new'
    end

    post "/pirates" do
      status 200
      @pirate = Pirate.new(params[:pirate])
      # @name = params[:pirate][:name]
      # @weight = params[:pirate][:weight]
      # @height = params[:pirate][:height]
      # @ship_name1 = params[:pirate][:ships][0][:name]
      # @type1 = params[:pirate][:ships][0][:type]
      # @booty1 = params[:pirate][:ships][0][:booty]
      # @ship_name2 = params[:pirate][:ships][1][:name]
      # @type2 = params[:pirate][:ships][1][:type]
      # @booty2 = params[:pirate][:ships][1][:booty]
      #
      @ship_1 = Ship.new(params[:pirate][:ships][0])
      @ship_2 = Ship.new(params[:pirate][:ships][1])
      # binding.pry

      erb :'pirates/show'
    end

  end
end
