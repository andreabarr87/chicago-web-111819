class WhalesController < Sinatra::Base
  # In config.ru, I had to type `use WhalesController` to get Sinatra to visit these routes in the browser!
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    set :method_override, true
  end

  get '/whales/:id' do
    @whale = Whale.find_by(id: params[:id])
    erb :'whales/show'
  end

  get '/whales/:id/wishes/new' do
    @whale = Whale.find_by(id: params[:id])

    erb :'whales/new-whale-wish'
  end

  post '/whales/:id/wishes' do
    find_whale
    @whale.wishes.create(params[:wish])
    redirect "/whales/#{@whale.id}"
  end

  def find_whale
    @whale = Whale.find_by(id: params[:id])
  end

end
