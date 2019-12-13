class WishesController < Sinatra::Base
  # In config.ru, I had to type `use WishesController` to get Sinatra to visit these routes in the browser!

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    # Enable the "hidden input hack" in edit forms so PUT requests can work
    set :method_override, true
  end

  # INDEX: Show a list of all wishes
  get '/wishes' do
    @wishes = Wish.all.order(:title)
    erb :'wishes/index'
  end

  # NEW: Form to provide attributes for a new Wish
  get '/wishes/new' do
    @whales = Whale.all
    erb :'wishes/new'
  end

  # CREATE: Take form attributes and use them to save a new Wish
  post '/wishes' do
    # binding.pry
    wish = Wish.new(params[:wish])
    wish.save
    redirect "/wishes/#{wish.id}"
  end

  # SHOW: Display one Wish and its details
  get '/wishes/:id' do
    # If the URL was "/wishes/5", then params looks like {id: 5}
    @wish = Wish.find_by(id: params[:id])

    if !@wish
      # If we can't find a wish with id from the URL, redirect to index
      redirect '/wishes'
    else
      # Otherwise, show the wish
      erb :'wishes/show'
    end
  end

  # EDIT: Form to change an existing Wish's attributes
  get '/wishes/:id/edit' do
    # Populate dropdown of whales
    @whales = Whale.all
    # Wish.find(params[:id]) # also works but throws error if wish not found
    @wish = Wish.find_by(id: params[:id])
    erb :'wishes/edit'
  end

  # UPDATE: Use form attributes to update an existing Wish
  put '/wishes/:id' do
    wish = Wish.find_by(id: params[:id])
    # Because we named the form field `name="wish[title]"` in the edit view,
    # the params hash has nested the title key and value
    # into a "wish" sub-hash. The params hash looks like this:
    # =>  `{"id": 4, "_method": "PUT", "wish": {"title": "New Title"}}`
    # ...and that lets us mass-assign all the Wish attributes at once.
    wish.assign_attributes(params[:wish])
    wish.save
    redirect "/wishes/#{wish.id}"
  end

end
