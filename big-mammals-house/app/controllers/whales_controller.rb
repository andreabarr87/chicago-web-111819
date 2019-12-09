class WhalesController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/whales/?' do
    @whales = Whale.all.order(:size)
    erb :'whales/index'
  end

  get '/whales/new' do
    "WHOA, NEW WHALE FORM INBOUND"
  end

  get '/whales/:id' do
    # puts "****************************************"
    # p params
    @whale = Whale.find(params[:id])
    # puts "****************************************"

    erb :'whales/show'
  end


end
