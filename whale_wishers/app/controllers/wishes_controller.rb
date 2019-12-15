class WishesController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/wishes' do
    @wishes = Wish.all
    erb :'wishes/index'
  end
end
