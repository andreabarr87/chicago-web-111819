class WishesController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    set :method_override, true
  end

  get '/wishes' do
    @wishes = Wish.all.order(:title)
    erb :'wishes/index'
  end

  get '/wishes/new' do
    erb :'wishes/new'
  end

  post '/wishes' do
    wish = Wish.create(title: params[:title])
    redirect "/wishes/#{wish.id}"
  end

  put '/wishes/:id' do
    p params
    # binding.pry
    wish = Wish.find_by(id: params[:id])
    wish.assign_attributes(params[:wish])
    wish.save
    redirect "/wishes/#{wish.id}"
  end

  # show one wish
  get '/wishes/:id' do
    # binding.pry
    @wish = Wish.find_by(id: params[:id])
    # binding.pry
    if !@wish
      redirect '/wishes'
    else
      erb :'wishes/show'
    end
  end

  get '/wishes/:id/edit' do
    p params[:id]
    # Wish.find(params[:id])
    @wish = Wish.find_by(id: params[:id])

    erb :'wishes/edit'
  end

end
