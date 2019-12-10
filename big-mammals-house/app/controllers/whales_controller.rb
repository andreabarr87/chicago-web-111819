class WhalesController < Sinatra::Base
  configure do
    set :public_folder, "public"
    set :views, "app/views"
  end

  # index route
  get '/whales/?' do
    @whales = Whale.all.order(:size)
    erb :"whales/index"
  end

  get '/whales/new' do
    # present form for whale, using partial
    erb :"whales/new"
  end

  post '/whales' do
    # binding.pry
    # make sure user form input is usable🐳
    # apply form input params to creating a Whale instance
    # whale = Whale.new(params)
    whale = Whale.new(name: params[:name], size: params[:size], species: params[:species])
    whale.save

    # prove to user a whale was added to DB
    redirect "/whales/#{whale.id}"
  end

  get '/whales/:id' do
    # puts "****************************************"
    # p params
    @whale = Whale.find(params[:id])
    # puts "****************************************"

    erb :"whales/show"
  end

  get '/whales/:id/edit' do
    p params[:id]
    "GONNA CHANGE A WHALE!"
  end


end
